//
//  SetCategoryFiltersRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451698
public struct SetCategoryFiltersRequest: Request {

    public let endpoint: ApiEndpoint = .SetCategoryFilters
    public let httpMethod: HTTPMethod = .post
    public var customParameters: [String : Any] = [:]

    public init(withUsername username: String, nws: Bool, stupid: Bool, political: Bool,
        tangent: Bool, informative: Bool) {

        self.customParameters["username"] = username
        self.customParameters["nws"] = nws ? "true" : "false"
        self.customParameters["stupid"] = stupid ? "true" : "false"
        self.customParameters["political"] = political ? "true" : "false"
        self.customParameters["tangent"] = tangent ? "true" : "false"
        self.customParameters["informative"] = informative ? "true" : "false"
    }

}
