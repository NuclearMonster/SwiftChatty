//
//  GetThreadResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/23/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451665
public struct GetThreadResponse {

    public var threads: [Thread] = []

    public init() {}

}

extension GetThreadResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try threads <~ map["threads"]
    }

}
