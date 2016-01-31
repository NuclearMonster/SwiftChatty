//
//  ThreadPostCount.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Model use in the response to GetThreadPostCountRequest.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451667
public struct ThreadPostCount {

    public var threadId: Int = 0
    public var postCount: Int = 0

    public init() {}

}

extension ThreadPostCount: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try threadId <~ map["threadId"]
        try postCount <~ map["postCount"]
    }

}
