//
//  GetAllUserRegistrationDatesResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/22/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451688
public struct GetAllUserRegistrationDatesResponse {

    public var registrationDates: [UserRegistrationDate] = []

    public init() {}

}

extension GetAllUserRegistrationDatesResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try registrationDates <~ map["users"]
    }

}
