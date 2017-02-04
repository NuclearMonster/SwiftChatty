//
//  PostLineage.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/18/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// Represents a parent chain for a particular post.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451674
public struct PostLineage {

    public var postId: Int = 0

    /// The post's parent, the parent's parent, and so on.
    public var posts: [Post] = []

    public init() {}

}

extension PostLineage: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try postId <~ map["postId"]
        try posts <~ map["lineage"]
    }

}
