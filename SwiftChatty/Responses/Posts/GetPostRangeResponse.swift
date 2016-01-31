//
//  GetPostRangeResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/30/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451672import Genome
public struct GetPostRangeResponse {

    public var posts: [Post] = []

    public init() {}

}

extension GetPostRangeResponse: Response {

    public mutating func sequence(map: Map) throws {
        try posts <~ map["posts"]
    }

}
