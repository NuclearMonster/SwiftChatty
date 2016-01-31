//
//  ApiError.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Error model used the API to communicate problems to clients.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451659
public struct ApiErrorResponse: ErrorType {

    public var error: Bool = true
    public var code: String = ""
    public var message: String = ""

    public init() {}

}

extension ApiErrorResponse: Response {

    public mutating func sequence(map: Map) throws {
        try error <~ map["error"]
        try code <~ map["code"]
        try message <~ map["message"]
    }

}
