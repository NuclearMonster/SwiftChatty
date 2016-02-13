//
//  Account.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

public struct Account {

    public var username: String?
    public var password: String?

    public init() {}

    public init(withUsername username: String, password: String) {
        self.username = username
        self.password = password
    }

}
