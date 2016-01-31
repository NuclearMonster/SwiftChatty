//
//  MarkMessageReadRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451694
public struct MarkMessageReadRequest: Request {

    public let endpoint: ApiEndpoint = .MarkMessageRead
    public let account: Account
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withAccount account: Account, messageId: Int) {
        self.account = account
        self.parameters["messageId"] = messageId
    }

}
