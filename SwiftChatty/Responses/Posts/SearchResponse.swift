//
//  SearchResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/19/16.
//  Copyright (c) 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451676
public struct SearchResponse {

    public var results: [SearchResult] = []

    public init() {}

}

extension SearchResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try results <~ map["posts"]
    }

}
