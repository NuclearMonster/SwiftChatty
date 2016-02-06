//
//  GetChattyResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/22/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451663
public struct GetChattyResponse {

    public var threads: [Thread] = []

    public init() {}

}

extension GetChattyResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try threads <~ map["threads"]
    }

}
