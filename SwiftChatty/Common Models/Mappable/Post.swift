//
//  Post.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// Model for a Chatty post.  This should be a complete model, with all
/// available information for a post, including lol counts.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct Post: PostType {

    // PostType
    public var id: Int = 0
    public var date: String = ""
    public var author: String = ""
    public var category: ModerationFlag?
    public var body: String = ""

    public var threadId: Int = 0
    public var parentId: Int = 0
    public var lols: [LOL] = []

    public init() {}

}

extension Post: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try id <~ map["id"]
        try threadId <~ map["threadId"]
        try parentId <~ map["parentId"]
        try author <~ map["author"]

        var categoryString: String = ""
        try categoryString <~ map["category"]
        if let moderationFlag = ModerationFlag(rawValue: categoryString) {
            category = moderationFlag
        }

        try date <~ map["date"]
        try body <~ map["body"]
        try lols <~ map["lols"]
    }

}
