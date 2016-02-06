//
//  LolPostRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 2/6/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

public struct LolPostRequest: Request {

    public let api: ApiRoot = .Lol
    public let endpoint: ApiEndpoint = .Lol
    public var parameters: [String : AnyObject] = [:]
    public let httpMethod: Alamofire.Method = .POST

    public init(withAccount account: Account, postId: Int, tag: LolTag, version: String = "20121024") {
        self.parameters["who"] = account.username
        self.parameters["what"] = postId

        if (tag == .Untag) {
            self.parameters["action"] = tag.rawValue
        } else {
            self.parameters["tag"] = tag.rawValue
        }

        self.parameters["version"] = version


    }
    
}
