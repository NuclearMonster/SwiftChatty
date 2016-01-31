//
//  MarkedPost.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Model for an object representing the status of a post
///
/// - SeeAlso: MarkedPostType
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct MarkedPost {

    public var id: Int = 0
    public var type: MarkedPostType?

    public init() {}

}

extension MarkedPost: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        var typeString: String = ""

        try id <~ map["id"]
        try typeString <~ map["type"]
        type = MarkedPostType(rawValue: typeString)
    }

}
