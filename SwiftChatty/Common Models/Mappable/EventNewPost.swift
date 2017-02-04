//
//  EventNewPost.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// An event used to notifiy clients that a new has been made on the Chatty.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct EventNewPost: EventDataType {

    public var postId: Int = 0
    public var post: Post = Post()
    public var parentAuthor: String?

    public init() {}

}

extension EventNewPost: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try postId <~ map["postId"]
        try post <~ map["post"]
        try parentAuthor <~ map["parentAuthor"]
    }

}
