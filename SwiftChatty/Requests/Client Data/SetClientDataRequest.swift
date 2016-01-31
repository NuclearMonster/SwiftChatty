//
//  SetClientDataRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - Attention: anyone can access this data with just a username.
///   Do not store secret or private information without encrypting it.
/// - SeeAlso - http://winchatty.com/v2/readme#_Toc421451703
public struct SetClientDataRequest: Request {

    public let endpoint: ApiEndpoint = .SetClientData
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withUsername username: String, client: String, data: String) {
        self.parameters["username"] = username
        self.parameters["client"] = client
        self.parameters["data"] = data
    }

}
