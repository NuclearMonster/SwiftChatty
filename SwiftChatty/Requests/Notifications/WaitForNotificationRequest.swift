//
//  WaitForNotificationRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451709
public struct WaitForNotificationRequest: Request {

    public let endpoint: ApiEndpoint = .WaitForNotification
    public let httpMethod: HTTPMethod = .post
    public var customParameters: [String : Any] = [:]

    public init(withClientId clientId: String) {
        self.customParameters["clientId"] = clientId 
    }
}
