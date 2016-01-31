//
//  GetChattyRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451663
public struct GetChattyRequest: Request {

    public let endpoint: ApiEndpoint = .GetChatty
    public var parameters: [String : AnyObject] = [:]

    public init(withCount count: Int?, expiration: Int?) {
        if let countParameter = count {
            self.parameters["count"] = countParameter
        }
        if let expirationParameter = expiration {
            self.parameters["expiration"] = expirationParameter
        }
    }

}
