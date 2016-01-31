//
//  EventServerMessage.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// An event used to notify clients that the server administrators has just
/// sent a message to all connected clients.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct EventServerMessage: EventDataType {

    public var message: String = ""

    public init() {}

}

extension EventServerMessage: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try message <~ map["message"]
    }

}
