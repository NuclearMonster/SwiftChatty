//
//  GetThreadRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451665
public struct GetThreadRequest: Request {

    public let endpoint: ApiEndpoint = .GetThread
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
