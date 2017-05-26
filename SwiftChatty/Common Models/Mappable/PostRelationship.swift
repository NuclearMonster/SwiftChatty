//
//  PostRelationship.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// Represent the parent/child relationship for a particular pair of posts.
/// Used when modeling the response for GetParentIdRequest.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451673
public struct PostRelationship {

    public var childId: Int = 0
    public var parentId: Int = 0

    public init() {}

}

extension PostRelationship: CommonMappableModel {

    public mutating func sequence(_ map: Map) throws {
        try childId <~ map["childId"]
        try parentId <~ map["parentId"]
    }

}
