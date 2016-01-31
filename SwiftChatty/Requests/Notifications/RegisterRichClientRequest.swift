//
//  RegisterRichClientRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451707
public struct RegisterRichClientRequest: Request {

    public let endpoint: ApiEndpoint = .RegisterRichClient
    public let httpMethod: Alamofire.Method = .POST
    public let account: Account
    public var parameters: [String : AnyObject] = [:]

    public init(withId id: String, name: String, account: Account, appleDeviceToken: String?) {
        self.account = account

        self.parameters["id"] = id
        self.parameters["name"] = name
        if let appleToken = appleDeviceToken {
            self.parameters["appleDeviceToken"] = appleToken
        }
    }
}
