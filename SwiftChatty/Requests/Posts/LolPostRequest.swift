//
//  LolPostRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 2/6/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Alamofire

public struct LolPostRequest: Request {

    public let api: ApiRoot = .Lol
    public let endpoint: ApiEndpoint = .Lol
    public var customParameters: [String : Any] = [:]
    public let httpMethod: HTTPMethod = .post

    public init(withAccount account: Account, postId: Int, tag: LolTag, version: String = "20121024") {
        self.customParameters["who"] = account.username 
        self.customParameters["what"] = postId 

        if (tag == .Untag) {
            self.customParameters["action"] = tag.rawValue 
        } else {
            self.customParameters["tag"] = tag.rawValue 
        }

        self.customParameters["version"] = version 


    }
    
}
