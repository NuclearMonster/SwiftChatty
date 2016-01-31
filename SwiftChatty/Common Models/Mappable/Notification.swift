//
//  Notification.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Model for a notification sent by the server.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451704
public struct Notification {

    public var postId: Int = 0
    public var threadId: Int = 0
    public var subject: String = ""
    public var body: String = ""

    public init() {}

}

extension Notification: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try postId <~ map["postId"]
        try threadId <~ map["threadId"]
        try subject <~ map["subject"]
        try body <~ map["body"]
    }

}
