//
//  EventCategoryChange.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/26/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// An event indicating that a post has been assigned a different category.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct EventCategoryChange: EventDataType {

    public var postId: Int = 0
    public var category: ModerationFlag?

    public init() {}

}

extension EventCategoryChange: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try postId <~ map["postId"]

        var categoryString: String = ""
        try categoryString <~ map["category"]
        if let moderationFlag = ModerationFlag(rawValue: categoryString) {
            category = moderationFlag
        }
    }

}
