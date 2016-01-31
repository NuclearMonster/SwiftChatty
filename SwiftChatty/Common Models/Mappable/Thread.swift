//
//  Thread.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Models a Chatty thread, which is nothing more than a thread ID, and a list of posts.
public struct Thread: ThreadType {

    public var id: Int = 0
    public var posts: [Post] = []

    public init() {}

}

extension Thread: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        var threadIdString: String = ""
        try threadIdString <~ map["threadId"]
        if let idInt = Int(threadIdString) {
            id = idInt
        }

        try posts <~ map["posts"]
    }

}
