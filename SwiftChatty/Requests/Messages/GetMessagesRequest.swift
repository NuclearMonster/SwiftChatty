//
//  GetMessagesRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451691
public struct GetMessagesRequest: Request {

    public let endpoint: ApiEndpoint = .GetMessages
    public var parameters: [String : AnyObject] = [:]
    public let account: Account
    public let httpMethod: Alamofire.Method = .POST

    public init(withAccount account: Account, folder: Mailbox, page: Int) {
        self.account = account

        self.parameters["folder"] = folder.rawValue
        self.parameters["page"] = page
    }

}
