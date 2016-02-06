//
//  EventLolCountUpdate.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

public struct EventLolCountUpdates: EventDataType {

    public var updates: [LolCountUpdate] = []

    public init() {}

}

/// An event indicating that lol counts have been updated for one or more posts.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
extension EventLolCountUpdates: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try updates <~ map["updates"]
    }

}

/// Model for a single lol count update, for a single post.
///
/// -SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct LolCountUpdate {

    public var postId: Int = 0
    public var tag: LolTag = .Unknown
    public var count: Int = 0

    public init() {}

}

extension LolCountUpdate: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try postId <~ map["postId"]

        var tagString = ""
        try tagString <~ map["tag"]
        if let tag = LolTag(rawValue: tagString) {
            self.tag = tag
        }

        try count <~ map["count"]
    }

}
