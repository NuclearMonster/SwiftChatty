//
//  PostCommentRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 2/14/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451675
public struct PostCommentRequest: Request {

    public let endpoint: ApiEndpoint = .PostComment
    public var customParameters: [String : Any] = [:]
    public let httpMethod: HTTPMethod = .post
    public let account: Account

    public init(withAccount account: Account, parentId: Int, text: String) {
        self.account = account
        self.customParameters["parentId"] = parentId 
        self.customParameters["text"] = text 
    }
    
}
