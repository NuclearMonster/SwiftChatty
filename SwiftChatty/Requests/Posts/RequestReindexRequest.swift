//
//  RequestReindexRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451677
public struct RequestReindexRequest: Request {

    public let endpoint: ApiEndpoint = .RequestReindex
    public var parameters: [String : AnyObject] = [:]
    public let httpMethod: Alamofire.Method = .POST

    public init(withPostId postId: Int) {
        self.parameters["postId"] = postId
    }

}
