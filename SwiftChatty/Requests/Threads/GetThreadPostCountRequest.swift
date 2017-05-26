//
//  GetThreadPostCountRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451667
public struct GetThreadPostCountRequest: Request {

    public let endpoint: ApiEndpoint = .GetThreadPostCount
    public var customParameters: [String : Any] = [:]

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
            self.customParameters["id"] = concatenatedIds 
        }
    }

}
