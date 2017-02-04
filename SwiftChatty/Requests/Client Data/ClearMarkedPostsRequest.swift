//
//  ClearMarkedPostsRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451700
public struct ClearMarkedPostsRequest: Request {

    public let endpoint: ApiEndpoint = .ClearMarkedPosts
    public let httpMethod: HTTPMethod = .post
    public var customParameters: [String : Any] = [:]

    public init(withUsername username: String) {
        self.customParameters["username"] = username 
    }

}
