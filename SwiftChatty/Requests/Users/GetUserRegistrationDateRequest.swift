//
//  UserRegistrationDate.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/21/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451687
public struct GetUserRegistrationDateRequest: Request {

    public let endpoint: ApiEndpoint = .GetUserRegistrationDate
    public var customParameters: [String : Any] = [:]

    public init(withUsers users: [String]) {
        if users.count > 0 {
            var concatenatedUsers: String = ""
            for i in 0...(users.count - 1) {
                if i == 0 {
                    concatenatedUsers += users[i]
                } else {
                    concatenatedUsers += ("," + users[i])
                }
            }
            self.customParameters["username"] = concatenatedUsers 
        }
    }

}
