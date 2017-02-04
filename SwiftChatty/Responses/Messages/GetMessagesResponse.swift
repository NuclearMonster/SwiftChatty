//
//  GetMessagesResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451691
public struct GetMessagesResponse {

    public var page: Int = 0
    public var totalPages: Int = 0
    public var totalMessages: Int = 0
    public var messages: [Message] = []

    public init() {}

}

extension GetMessagesResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try page <~ map["page"]
        try totalPages <~ map["totalPages"]
        try totalMessages <~ map["totalMessages"]
        try messages <~ map["messages"]
    }

}
