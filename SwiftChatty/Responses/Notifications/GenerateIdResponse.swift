//
//  GenerateIdResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451705
public struct GenerateIdResponse {

    public var id: String = ""

    public init() {}

}

extension GenerateIdResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try id <~ map ["id"]
    }

}
