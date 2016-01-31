//
//  BroadcastServerMessageRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451683
public struct BroadcastServerMessageRequest: Request {

    public let endpoint: ApiEndpoint = .BroadcastServerMessage
    public let account: Account
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withAccount account: Account, message: String) {
        self.account = account
        self.parameters["message"] = message
    }

}
