//
//  ClearMarkedPostsRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451700
public struct ClearMarkedPostsRequest: Request {

    public let endpoint: ApiEndpoint = .ClearMarkedPosts
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withUsername username: String) {
        self.parameters["username"] = username
    }

}
