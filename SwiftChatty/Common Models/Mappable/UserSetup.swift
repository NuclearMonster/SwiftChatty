//
//  UserSetup.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// Model used in the response to GetUserSetup, which is a request to get
/// the user's notification preferences stored on the server.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451710
public struct UserSetup {

    public var triggerOnMention: Bool = false
    public var triggerOnReply: Bool = false
    public var triggerKeywords: [String] = []

    public init() {}

}

extension UserSetup: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try triggerOnMention <~ map["triggerOnMention"]
        try triggerOnReply <~ map["triggerOnReply"]
        try triggerKeywords <~ map["triggerKeywords"]
    }

}
