//
//  GetThreadPostIdsResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451666
public struct GetThreadPostIdsResponse {

    public var threadsPostIds: [ThreadPostId] = []

    public init() {}

}

extension GetThreadPostIdsResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try threadsPostIds <~ map["threads"]
    }

}
