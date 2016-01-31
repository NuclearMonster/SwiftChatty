//
//  GetMessageCountResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/24/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451692
public struct GetMessageCountResponse {

    public var total: Int = 0
    public var unread: Int = 0

    public init() {}

}

extension GetMessageCountResponse: Response {

    public mutating func sequence(map: Map) throws {
        try total <~ map ["total"]
        try unread <~ map["unread"]
    }

}
