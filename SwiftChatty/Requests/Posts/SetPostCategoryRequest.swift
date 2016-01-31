//
//  SetPostCategoryRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451678
public struct SetPostCategoryRequest: Request {

    public let endpoint: ApiEndpoint = .SetPostCategory
    public var parameters: [String : AnyObject] = [:]
    public let httpMethod: Alamofire.Method = .POST
    public let account: Account

    public init(withAccount account: Account, postId: Int, category: ModerationFlag) {
        self.account = account
        self.parameters["postId"] = postId
        self.parameters["category"] = category.rawValue
    }

}
