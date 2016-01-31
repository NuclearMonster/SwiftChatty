//
//  SetUserSetupRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451711
public struct SetUserSetupRequest: Request {

    public let endpoint: ApiEndpoint = .SetUserSetup
    public let httpMethod: Alamofire.Method = .POST
    public let account: Account
    public var parameters: [String : AnyObject] = [:]

    public init(withAccount account: Account, triggerOnReply: Bool, triggerOnMention: Bool,
        triggerKeywords: [String]) {

        self.account = account
        self.parameters["triggerOnReply"] = triggerOnReply ? "true" : "false"
        self.parameters["triggerOnMention"] = triggerOnMention ? "true" : "false"

        if triggerKeywords.count > 0 {
            var concatenatedWords = ""
            for word in triggerKeywords {
                if word == triggerKeywords[0] {
                    concatenatedWords = word
                } else {
                    concatenatedWords = "\(concatenatedWords),\(word)"
                }
            }
            self.parameters["triggerKeywords"] = concatenatedWords
        }
    }
}
