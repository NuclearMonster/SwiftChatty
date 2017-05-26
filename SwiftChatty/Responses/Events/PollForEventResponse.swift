//
//  PollForEventResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451682
public struct PollForEventResponse {

    public var lastEventId: Int = 0
    public var events: [Event] = []

    public init() {}

}

extension PollForEventResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try lastEventId <~ map ["lastEventId"]
        try events <~ map["events"]
    }

}
