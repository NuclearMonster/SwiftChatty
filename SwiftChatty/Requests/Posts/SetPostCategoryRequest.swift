//
//  SetPostCategoryRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451678
public struct SetPostCategoryRequest: Request {

    public let endpoint: ApiEndpoint = .SetPostCategory
    public var customParameters: [String : Any] = [:]
    public let httpMethod: HTTPMethod = .post
    public let account: Account

    public init(withAccount account: Account, postId: Int, category: ModerationFlag) {
        self.account = account
        self.customParameters["postId"] = postId 
        self.customParameters["category"] = category.rawValue 
    }

}
