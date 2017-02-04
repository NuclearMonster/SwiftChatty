//
//  RequestReindexRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451677
public struct RequestReindexRequest: Request {

    public let endpoint: ApiEndpoint = .RequestReindex
    public var customParameters: [String : Any] = [:]
    public let httpMethod: HTTPMethod = .post

    public init(withPostId postId: Int) {
        self.customParameters["postId"] = postId 
    }

}
