//
//  CommonSuccessResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/20/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Some of the API requests just return an success acknowledgement response.
/// This is the protocol that models that response.
public protocol CommonSuccessResponse: MappableResponse {

    var result: String { get set }

}

extension CommonSuccessResponse {

    public mutating func sequence(map: Map) throws {
        try result <~ map["result"]
    }

}
