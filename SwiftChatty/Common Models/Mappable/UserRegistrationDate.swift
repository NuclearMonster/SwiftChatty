//
//  UserRegistrationDate.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/21/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Models a user registration date record.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451687
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451688
public struct UserRegistrationDate {

    public var username: String = ""
    public var date: String = ""

    public init() {}

}

extension UserRegistrationDate: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try username <~ map["username"]
        try date <~ map["date"]
    }

}
