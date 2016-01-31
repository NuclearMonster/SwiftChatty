//
//  RegisterNotifierClientRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451706
public struct RegisterNotifierClientRequest: Request {

    public let endpoint: ApiEndpoint = .RegisterNotifierClient
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withId id: String, name: String) {
        self.parameters["id"] = id
        self.parameters["name"] = name
    }
}
