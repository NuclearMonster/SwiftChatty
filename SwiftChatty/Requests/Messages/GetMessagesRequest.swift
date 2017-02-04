//
//  GetMessagesRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451691
public struct GetMessagesRequest: Request {

    public let endpoint: ApiEndpoint = .GetMessages
    public var customParameters: [String : Any] = [:]
    public let account: Account
    public let httpMethod: HTTPMethod = .post

    public init(withAccount account: Account, folder: Mailbox, page: Int) {
        self.account = account

        self.customParameters["folder"] = folder.rawValue 
        self.customParameters["page"] = page 
    }

}
