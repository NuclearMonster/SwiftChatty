//
//  MarkPostRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451701
public struct MarkPostRequest: Request {

    public let endpoint: ApiEndpoint = .MarkPost
    public let httpMethod: HTTPMethod = .post
    public var customParameters: [String : Any] = [:]

    public init(withUsername username: String, postId: Int, type: MarkedPostType) {
        self.customParameters["username"] = username 
        self.customParameters["postId"] = postId 
        self.customParameters["type"] = type.rawValue 
    }

}
