//
//  GetClientDataRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451702
public struct GetClientDataRequest: Request {

    public let endpoint: ApiEndpoint = .GetClientData
    public var customParameters: [String : Any] = [:]

    public init(withUsername username: String, client: String) {
        self.customParameters["username"] = username 
        self.customParameters["client"] = client 
    }

}
