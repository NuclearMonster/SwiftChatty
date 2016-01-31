//
//  MarkPostRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451701
public struct MarkPostRequest: Request {

    public let endpoint: ApiEndpoint = .MarkPost
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withUsername username: String, postId: Int, type: MarkedPostType) {
        self.parameters["username"] = username
        self.parameters["postId"] = postId
        self.parameters["type"] = type.rawValue
    }

}
