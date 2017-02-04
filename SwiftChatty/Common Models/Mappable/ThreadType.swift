//
//  ThreadType.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

public enum ThreadSortOrder {

    /// All posts sorted by date only, with the newer ones first
    case flatNewestFirst
    /// All posts sorted by date only, with the older ones first
    case flatOldestFirst
    /// All replies directly below the root post sorted by date with the newer ones first, 
    /// and all of the replies below those organized by threads with the older
    /// ones first.  The root post is always the first post in the thread.
    case threadedNewestFirst
    /// All replies directly below the root post sorted by date with the older ones first,
    /// and all of the replies below those organized by threads with the older
    /// ones first.  The root post is always the first post in the thread.
    case threadedOldestFirst

}

/// Implements features that are common to all threads
public protocol ThreadType {

    var id: Int { get set }
    var posts: [Post] { get set }

}

extension ThreadType {

    public var posts: [Post] {
        return [Post]()
    }

    public func rootPost() -> Post {
        if let rootPost = (self.posts.filter { $0.id == self.id  }).first {
            return rootPost
        } else {
            return Post()
        }
    }

    public func isParticipant(_ username: String) -> Bool {
        return self.posts.filter( { $0.author == username } ).count > 0
    }
    /// Calculates how many subthreads deep a particular post is
    ///
    /// - paramter post: Post that we want to calculate the depth for
    /// - returns: An integer representing how many subthreads deep a post is into this thread.
    public func depth(forPost post: Post) -> Int {
        var parentId = post.parentId
        var levels = 0

        while parentId != self.id {
            guard let parentPost = (self.posts.filter { $0.id == parentId }).first else {
                return 0
            }
            parentId = parentPost.parentId
            levels += 1
        }

        return levels
    }
    /// Determines the parent post for another post
    ///
    /// - parameter post: The post whose parent we want to determine
    /// - return: The parent post, or nil if the current post is the root of the thread
    public func parent(forPost post: Post) -> Post? {
        return (self.posts.filter { $0.id == post.parentId }).first
    }
    /// Finds all of the posts that were made after a certain post in the same thread (or any of its 
    /// subthreads)
    ///
    /// - parameter post: The post whose descendants we want to find
    /// - returns: An array of posts containing any descendants found
    public func descendants(forPost post: Post) -> [Post] {
        var descendantPosts = self.posts.filter { ($0.parentId == post.id) }

        if descendantPosts.count > 0 {
            for descendantPost in descendantPosts {
                descendantPosts.append(contentsOf: self.descendants(forPost: descendantPost))
            }
        }

        return descendantPosts
    }
    /// Finds all posts immediately below (in a hierarchical thread) another post.
    ///
    /// - parameter posts: The list of posts to search through
    /// - parameter post: The post under which we want to find the top level posts
    /// - returns: An array of posts consisting of the top level posts under the post passed in as
    ///   a parameter.
    public func topLevelPosts(_ posts: [Post], underPost root: Post) -> [Post] {
        var topLevelPosts = [Post]()

        for post in posts {
            if post.parentId == root.id {
                topLevelPosts.append(post)
            }
        }

        return topLevelPosts
    }

    public mutating func sort(_ order: ThreadSortOrder) {
        switch(order) {
        case .flatNewestFirst: fallthrough
        case .flatOldestFirst:
            self.flatSort(order)
        case .threadedNewestFirst: fallthrough
        case .threadedOldestFirst:
            self.threadedSort(order)
        }
    }

    fileprivate mutating func flatSort(_ order: ThreadSortOrder) {
        if (order == .threadedOldestFirst) {
            self.posts.sort {
                return $0.older(than: $1)
            }
        } else {
            self.posts.sort {
                return $0.newer(than: $1)
            }
        }
    }

    fileprivate mutating func threadedSort(_ order: ThreadSortOrder) {
        let postsArrayWithoutRootPost = self.posts.filter( { $0.id != self.id } )
        let rootPost = self.rootPost()

        var threadedPosts = [Post]()
        var topLevelPosts = self.topLevelPosts(postsArrayWithoutRootPost, underPost: rootPost)

        if (order == .threadedOldestFirst) {
            topLevelPosts.sort( by: { return $0.older(than: $1) } )
        } else {
            topLevelPosts.sort( by: { return $0.newer(than: $1) } )
        }

        threadedPosts.append(rootPost)
        for topLevelPost in topLevelPosts {
            threadedPosts.append(topLevelPost)
            threadedPosts.append(contentsOf: orderedThread(postsArrayWithoutRootPost, root: topLevelPost))
        }

        self.posts = threadedPosts
    }

    fileprivate func orderedThread(_ posts: [Post], root: Post) -> [Post] {
        var topLevelPosts = self.topLevelPosts(posts, underPost: root)
        var result = [Post]()

        topLevelPosts.sort( by: { $0.older(than: $1) } )

        for topLevelPost in topLevelPosts {
            result.append(topLevelPost)
            result.append(contentsOf: orderedThread(posts, root: topLevelPost))
        }

        return result
    }

}
