//
//  GetNewestPostInfoRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451670
public struct GetNewestPostInfoRequest: Request {

    public let endpoint: ApiEndpoint = .GetNewestPostInfo
    public var parameters: [String : AnyObject] = [:]

    public init() {}

}
