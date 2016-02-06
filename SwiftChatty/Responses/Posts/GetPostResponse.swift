//
//  GetPostResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451671
public struct GetPostResponse {

    public var posts: [Post] = []

    public init() {}

}

extension GetPostResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try posts <~ map["posts"]
    }

}
