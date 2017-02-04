//
//  GetNewestPostInfoResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451670
public struct GetNewestPostInfoResponse {

    public var id: Int = 0
    public var date: String = ""

    public init() {}

}

extension GetNewestPostInfoResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try id <~ map["id"]
        try date <~ map["date"]
    }

}
