//
//  MarkMessageReadRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451694
public struct MarkMessageReadRequest: Request {

    public let endpoint: ApiEndpoint = .MarkMessageRead
    public let account: Account
    public let httpMethod: HTTPMethod = .post
    public var customParameters: [String : Any] = [:]

    public init(withAccount account: Account, messageId: Int) {
        self.account = account
        self.customParameters["messageId"] = messageId 
    }

}
