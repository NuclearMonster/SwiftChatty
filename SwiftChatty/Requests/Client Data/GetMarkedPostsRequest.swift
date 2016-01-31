//
//  GetMarkedPostsRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451699
public struct GetMarkedPostsRequest: Request {

    public let endpoint: ApiEndpoint = .GetMarkedPosts
    public var parameters: [String : AnyObject] = [:]

    public init(withUsername username: String) {
        self.parameters["username"] = username
    }

}
