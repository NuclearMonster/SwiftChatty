//
//  PollForEventRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451682
public struct PollForEventRequest: Request {

    public let endpoint: ApiEndpoint = .PollForEvent
    public var parameters: [String : AnyObject] = [:]

    public init(withLastEventId lastEventId: Int, includeParentAuthor: Bool) {
        self.parameters["lastEventId"] = lastEventId
        self.parameters["includeParentAuthor"] = includeParentAuthor ? "true" : "false"
    }

}
