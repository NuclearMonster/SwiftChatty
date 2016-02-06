//
//  WaitForEventResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451681
public struct WaitForEventResponse {

    public var lastEventId: Int = 0
    public var events: [Event] = []

    public init() {}

}

extension WaitForEventResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try lastEventId <~ map ["lastEventId"]
        try events <~ map["events"]
    }

}
