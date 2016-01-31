//
//  GetChattyRootPostsResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451664
public struct GetChattyRootPostsResponse {

    public var totalThreadCount: Int = 0
    public var rootPosts: [RootPost] = []

    public init() {}

}

extension GetChattyRootPostsResponse: Response {

    public mutating func sequence(map: Map) throws {
        try totalThreadCount <~ map["totalThreadCount"]
        try rootPosts <~ map["rootPosts"]
    }

}
