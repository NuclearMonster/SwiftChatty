//
//  VerifyCredentialsRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/20/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451686
public struct VerifyCredentialsRequest: Request {

    public let endpoint: ApiEndpoint = .VerifyCredentials
    public let httpMethod: HTTPMethod = .post
    public let account: Account

    public init(withAccount account: Account) {
        self.account = account
    }

}
