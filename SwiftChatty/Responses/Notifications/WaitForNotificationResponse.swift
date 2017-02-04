//
//  WaitForNotificationResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451709
public struct WaitForNotificationResponse {

    public var notifications: [Notification] = []

    public init() {}

}

extension WaitForNotificationResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try notifications <~ map ["messages"]
    }

}
