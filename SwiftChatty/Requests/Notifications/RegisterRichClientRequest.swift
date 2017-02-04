//
//  RegisterRichClientRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451707
public struct RegisterRichClientRequest: Request {

    public let endpoint: ApiEndpoint = .RegisterRichClient
    public let httpMethod: HTTPMethod = .post
    public let account: Account
    public var customParameters: [String : Any] = [:]

    public init(withId id: String, name: String, account: Account, appleDeviceToken: String?) {
        self.account = account

        self.customParameters["id"] = id 
        self.customParameters["name"] = name 
        if let appleToken = appleDeviceToken {
            self.customParameters["appleDeviceToken"] = appleToken 
        }
    }
}
