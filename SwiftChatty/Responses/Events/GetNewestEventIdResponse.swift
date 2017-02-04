//
//  GetNewestEventIdResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451680
public struct GetNewestEventIdResponse {

    public var eventId: Int = 0

    public init() {}

}

extension GetNewestEventIdResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try eventId <~ map ["eventId"]
    }

}
