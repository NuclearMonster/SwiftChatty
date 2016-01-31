//
//  GetThreadPostIdsRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451666
public struct GetThreadPostIdsRequest: Request {

    public let endpoint: ApiEndpoint = .GetThreadPostIds
    public var parameters: [String : AnyObject] = [:]

    public init(withThreadIds ids: [Int]) {
        if ids.count > 0 {
            var concatenatedIds: String = ""
            for i in 0...(ids.count - 1) {
                if i == 0 {
                    concatenatedIds += String(ids[i])
                } else {
                    concatenatedIds += ("," + String(ids[i]))
                }
            }
            self.parameters["id"] = concatenatedIds
        }
    }

}
