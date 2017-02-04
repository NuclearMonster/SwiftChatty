//
//  RootPost.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// A root post represents a post that was posted to the Chatty as the start of
/// a new thread.  This model is used in mapping the response for GetChattyRootPosts request.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451664
public struct RootPost: PostType {

    public var id: Int = 0
    public var date: String = ""
    public var author: String = ""
    public var category: ModerationFlag?
    public var body: String = ""

    public var postCount: Int = 0

    /// When making a request for root posts, if a username is sent as a parameter,
    /// the server will mark each returned thread with a flag to indicate whether or
    /// not the user is a participant in that thread.
    public var isParticipant: Bool = false

    public init() {}

}

extension RootPost: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try id <~ map["id"]
        try date <~ map["date"]
        try author <~ map["author"]

        var categoryString: String = ""
        try categoryString <~ map["category"]
        if let moderationFlag = ModerationFlag(rawValue: categoryString) {
            category = moderationFlag
        }

        try body <~ map["body"]
        try postCount <~ map["postCount"]
        try isParticipant <~ map["isParticipant"]
    }

}
