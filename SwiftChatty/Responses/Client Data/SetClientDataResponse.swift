//
//  SetClientDataResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/28/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - Attention: anyone can access this data with just a username.
///   Do not store secret or private information without encrypting it.
/// - SeeAlso - http://winchatty.com/v2/readme#_Toc421451703
public struct SetClientDataResponse: CommonSuccessResponse {

    public var result: String = ""

    public init() {}

}
