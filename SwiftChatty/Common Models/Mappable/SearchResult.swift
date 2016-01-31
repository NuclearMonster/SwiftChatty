//
//  SearchResult.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/19/16.
//  Copyright (c) 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Model a Chatty search result.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451676
public struct SearchResult: PostType {

    public var id: Int = 0
    public var date: String = ""
    public var author: String = ""
    public var category: ModerationFlag?
    public var body: String = ""

    public var threadId: Int = 0
    public var parentId: Int = 0

    public init() {}

}

extension SearchResult: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try id <~ map["id"]
        try threadId <~ map["threadId"]
        try parentId <~ map["parentId"]
        try author <~ map["author"]

        var categoryString: String = ""
        try categoryString <~ map["category"]
        if let moderationFlag = ModerationFlag(rawValue: categoryString) {
            category = moderationFlag
        }

        try date <~ map["date"]
        try body <~ map["body"]
    }

}
