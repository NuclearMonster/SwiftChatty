//
//  LOL.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// Model for LOL tag.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct LOL {

    public var tag: LolTag = .Unknown
    public var count: Int = 0

    public init() {}

}

extension LOL: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        var tagString = ""
        try tagString <~ map["tag"]
        if let tag = LolTag(rawValue: tagString) {
            self.tag = tag
        }

        try count <~ map["count"]
    }

}
