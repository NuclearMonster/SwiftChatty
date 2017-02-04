//
//  Message.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// Model representing a Shack message
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451690
public struct Message {

    public var id: Int = 0
    public var from: String = ""
    public var to: String = ""
    public var subject: String = ""
    public var date: String = ""
    public var body: String = ""
    public var unread: Bool = true

    public init() {}

}

extension Message: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try id <~ map["id"]
        try from <~ map["from"]
        try to <~ map["to"]
        try subject <~ map["subject"]
        try date <~ map["date"]
        try body <~ map["body"]
        try unread <~ map["unread"]
    }

}
