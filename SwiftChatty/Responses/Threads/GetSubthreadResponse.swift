//
//  GetSubthreadResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Genome

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451668
public struct GetSubthreadResponse {

    public var threads: [Thread] = []

    public init() {}

}

extension GetSubthreadResponse: MappableResponse {

    public mutating func sequence(_ map: Map) throws {
        try threads <~ map["subthreads"]
    }

}
