//
//  SendMessageRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451693
public struct SendMessageRequest: Request {

    public let endpoint: ApiEndpoint = .SendMessage
    public let httpMethod: Alamofire.Method = .POST
    public var account: Account
    public var parameters: [String : AnyObject] = [:]

    public init(withAccount account: Account, to: String, subject: String, body: String) {
        self.account = account

        self.parameters["to"] = to
        self.parameters["subject"] = subject
        self.parameters["body"] = body
    }

}
