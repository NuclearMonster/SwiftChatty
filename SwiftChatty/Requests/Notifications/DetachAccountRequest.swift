//
//  DetachAccountRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451708
public struct DetachAccountRequest: Request {

    public let endpoint: ApiEndpoint = .DetachAccount
    public let httpMethod: Alamofire.Method = .POST
    public let account: Account
    public var parameters: [String : AnyObject] = [:]

    public init(withClientId clientId: String, account: Account) {
        self.account = account
        self.parameters["clientId"] = clientId
    }
}
