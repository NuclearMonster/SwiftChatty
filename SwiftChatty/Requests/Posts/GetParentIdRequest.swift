//
//  GetParentIdRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451673
public struct GetParentIdRequest: Request {

    public let endpoint: ApiEndpoint = .GetParentId
    public var customParameters: [String : Any] = [:]

    public init(withPostIds ids: [Int]) {

        if ids.count > 0 {
            var concatenatedIds: String = ""
            for i in 0...(ids.count - 1) {
                if i == 0 {
                    concatenatedIds += String(ids[i])
                } else {
                    concatenatedIds += ("," + String(ids[i]))
                }
            }
            self.customParameters["id"] = concatenatedIds 
        }
    }

}
