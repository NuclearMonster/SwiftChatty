//
//  ThreadType.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

public enum ThreadSortOrder {

    case NewestFirst
    case OldestFirst

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

    public func rootPost() -> Post? {
        return (self.posts.filter { $0.id == self.id  }).first
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
    /// Finds all of the posts that were made after a certain post
    ///
    /// - parameter post: The post whose descendants we want to find
    /// - returns: An array of posts containing any descendants found
    public func descendants(forPost post: Post) -> [Post] {
        var descendantPosts = self.posts.filter { ($0.parentId == post.id) }

        if descendantPosts.count > 0 {
            for descendantPost in descendantPosts {
                descendantPosts.appendContentsOf(self.descendants(forPost: descendantPost))
            }
        }

        return descendantPosts
    }

    public mutating func sort(order: ThreadSortOrder) {
        if order == .NewestFirst {
            self.posts.sortInPlace {
                return $0.newer(than: $1)
            }
        } else {
            self.posts.sortInPlace {
                return $0.older(than: $1)
            }
        }
    }

}
