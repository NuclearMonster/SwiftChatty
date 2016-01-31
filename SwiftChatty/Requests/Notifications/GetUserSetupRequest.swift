//
//  GetUserSetupRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451710
public struct GetUserSetupRequest: Request {

    public let endpoint: ApiEndpoint = .GetUserSetup
    public let httpMethod: Alamofire.Method = .POST
    public let account: Account
    public var parameters: [String : AnyObject] = [:]

    public init(withAccount account: Account) {
        self.account = account
    }
}
