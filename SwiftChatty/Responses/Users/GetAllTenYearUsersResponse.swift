//
//  GetAllTenYearUsersResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/22/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451689
public struct GetAllTenYearUsersResponse {

    public var users: [String] = []

    public init() {}

}

extension GetAllTenYearUsersResponse: MappableResponse {

    public mutating func sequence(map: Map) throws {
        try users <~ map["users"]
    }

}
