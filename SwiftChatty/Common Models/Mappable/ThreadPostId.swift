//
//  ThreadPostId.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Model used in the response to GetThreadPostId
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451666
public struct ThreadPostId {

    public var threadId: Int = 0
    public var postIds: [Int] = []

    public init() {}

}

extension ThreadPostId: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        var threadIdString: String = ""
        try threadIdString <~ map["threadId"]
        if let idInt = Int(threadIdString) {
            threadId = idInt
        }

        var postIdStrings: [String] = []
        try postIdStrings <~ map["postIds"]
        for postIdString in postIdStrings {
            if let postIdInt = Int(postIdString) {
                postIds.append(postIdInt)
            }
        }
    }

}
