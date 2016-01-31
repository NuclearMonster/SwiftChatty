//
//  GetUserRegistrationDateResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/21/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451687
public struct GetUserRegistrationDateResponse {

    public var registrationDates: [UserRegistrationDate] = []

    public init() {}

}

extension GetUserRegistrationDateResponse: Response {

    public mutating func sequence(map: Map) throws {
        try registrationDates <~ map["users"]
    }

}
