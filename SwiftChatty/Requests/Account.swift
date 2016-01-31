//
//  Account.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

public struct Account {

    public let username: String?
    public let password: String?

    public init() {
        self.username = nil
        self.password = nil
    }

    public init(withUsername username: String, password: String) {
        self.username = username
        self.password = password
    }

}
