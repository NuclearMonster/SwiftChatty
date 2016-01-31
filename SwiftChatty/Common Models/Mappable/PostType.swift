//
//  PostType.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/23/16.
//  Copyright (c) 2016 Andre Bocchini. All rights reserved.
//

/// Represents the most basic characteristics of a post.  Any model that
/// conforms to this protocol can be be interpreted, to a certain extent,
/// as a Chatty post.
public protocol PostType {

    var id: Int { get set }
    var date: String { get set }
    var author: String { get set }
    var category: ModerationFlag? { get set }
    var body: String { get set }
}

extension PostType {

    public func older(than post: PostType) -> Bool {
        return self.date < post.date
    }

    public func newer(than post: PostType) -> Bool {
        return !older(than: post)
    }
}
