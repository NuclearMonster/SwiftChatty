//
//  GetMessageCount.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451692
public struct GetMesssageCountRequest: Request {

    public let endpoint: ApiEndpoint = .GetMessageCount
    public let account: Account
    public let httpMethod: Alamofire.Method = .POST

    public init(withAccount account: Account) {
        self.account = account
    }

}
