//
//  VerifyCredentialsResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/20/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451686
public struct VerifyCredentialsResponse {

    public var isValid: Bool = false
    public var isModerator: Bool = false

    public init() {}

}

extension VerifyCredentialsResponse: Response {

    public mutating func sequence(map: Map) throws {
        try isValid <~ map["isValid"]
        try isModerator <~ map["isModerator"]
    }

}
