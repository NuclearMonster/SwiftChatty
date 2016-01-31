//
//  GetPostLineageResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/18/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451674
public struct GetPostLineageResponse {

    public var lineage: [PostLineage] = []

    public init() {}

}

extension GetPostLineageResponse {

    public mutating func sequence(map: Map) throws {
        try lineage <~ map ["posts"]
    }

}
