//
//  WaitForEventRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451681
public struct WaitForEventRequest: Request {

    public let endpoint: ApiEndpoint = .WaitForEvent
    public var customParameters: [String : Any] = [:]

    public init(withLastEventId lastEventId: Int, includeParentAuthor: Bool) {
        self.customParameters["lastEventId"] = lastEventId 
        self.customParameters["includeParentAuthor"] = includeParentAuthor ? "true" : "false"
    }

}
