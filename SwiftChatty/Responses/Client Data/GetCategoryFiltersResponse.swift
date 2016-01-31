//
//  GetCategoryFiltersResponse.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// SeeAlso: http://winchatty.com/v2/readme#_Toc421451697
public struct GetCategoryFiltersResponse {

    public var nws: Bool = false
    public var stupid: Bool = false
    public var political: Bool = false
    public var tangent: Bool = false
    public var informative: Bool = false

    public init() {}

}

extension GetCategoryFiltersResponse: Response {

    public mutating func sequence(map: Map) throws {
        try nws <~ map["filters.nws"]
        try stupid <~ map["filters.stupid"]
        try political <~ map["filters.political"]
        try tangent <~ map["filters.tangent"]
        try informative <~ map["filters.informative"]
    }

}
