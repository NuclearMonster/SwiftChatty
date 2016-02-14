//
//  PostCommentRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 2/14/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451675
public struct PostCommentRequest: Request {

    public let endpoint: ApiEndpoint = .PostComment
    public var parameters: [String : AnyObject] = [:]
    public let httpMethod: Alamofire.Method = .POST
    public let account: Account

    public init(withAccount account: Account, parentId: Int, text: String) {
        self.account = account
        self.parameters["parentId"] = parentId
        self.parameters["text"] = text
    }
    
}