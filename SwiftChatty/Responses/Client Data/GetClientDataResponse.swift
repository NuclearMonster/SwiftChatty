//
//  GetClientDataResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451702
public struct GetClientDataResponse {

    public var data: String = ""

    public init() {}

}

extension GetClientDataResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try data <~ map["data"]
    }

}
