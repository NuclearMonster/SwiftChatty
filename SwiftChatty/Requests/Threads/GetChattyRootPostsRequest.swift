//
//  GetChattyRootPostsRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451664
public struct GetChattyRootPostsRequest: Request {

    public let endpoint: ApiEndpoint = .GetChattyRootPosts
    public var customParameters: [String : Any] = [:]

    public init(withOffset offset: Int?, limit: Int?, username: String?, date: String?) {
        if let offsetParameter = offset {
            self.customParameters["offset"] = offsetParameter 
        }
        if let limitParameter = limit {
            self.customParameters["limit"] = limitParameter 
        }
        if let usernameParameter = username {
            self.customParameters["username"] = usernameParameter 
        }
        if let dateParameter = date {
            self.customParameters["date"] = dateParameter 
        }
    }

}
