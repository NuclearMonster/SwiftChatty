//
//  GetMarkedPostsResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451699
public struct GetMarkedPostsResponse {

    public var markedPosts: [MarkedPost] = []

    public init() {}

}

extension GetMarkedPostsResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try markedPosts <~ map["markedPosts"]
    }

}
