//
//  GetParentIdResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451673
public struct GetParentIdResponse {

    public var relationships: [PostRelationship] = []

    public init() {}

}

extension GetParentIdResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try relationships <~ map["relationships"]
    }

}
