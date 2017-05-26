//
//  SendMessageRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451693
public struct SendMessageRequest: Request {

    public let endpoint: ApiEndpoint = .SendMessage
    public let httpMethod: HTTPMethod = .post
    public var account: Account
    public var customParameters: [String : Any] = [:]

    public init(withAccount account: Account, to: String, subject: String, body: String) {
        self.account = account

        self.customParameters["to"] = to 
        self.customParameters["subject"] = subject 
        self.customParameters["body"] = body 
    }

}
