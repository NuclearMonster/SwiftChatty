//
//  GetThreadPostCountResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451667
public struct GetThreadPostCountResponse {

    public var threads: [ThreadPostCount] = []

    public init() {}

}

extension GetThreadPostCountResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try threads <~ map["threads"]
    }

}
