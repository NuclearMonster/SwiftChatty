//
//  GetUserSetupResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451710
public struct GetUserSetupResponse {

    public var userSetup: UserSetup = UserSetup()

    public init() {}

}

extension GetUserSetupResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        var triggerOnReply: Bool = false
        var triggerOnMention: Bool = false
        var triggerKeywords: [String] = []

        try triggerOnReply <~ map ["triggerOnReply"]
        try triggerOnMention <~ map ["triggerOnMention"]
        try triggerKeywords <~ map ["triggerKeywords"]

        userSetup.triggerOnReply = triggerOnReply
        userSetup.triggerOnMention = triggerOnMention
        userSetup.triggerKeywords = triggerKeywords
    }

}
