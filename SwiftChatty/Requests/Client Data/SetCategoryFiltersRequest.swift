//
//  SetCategoryFiltersRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451698
public struct SetCategoryFiltersRequest: Request {

    public let endpoint: ApiEndpoint = .SetCategoryFilters
    public let httpMethod: Alamofire.Method = .POST
    public var parameters: [String : AnyObject] = [:]

    public init(withUsername username: String, nws: Bool, stupid: Bool, political: Bool,
        tangent: Bool, informative: Bool) {

        self.parameters["username"] = username
        self.parameters["nws"] = nws ? "true" : "false"
        self.parameters["stupid"] = stupid ? "true" : "false"
        self.parameters["political"] = political ? "true" : "false"
        self.parameters["tangent"] = tangent ? "true" : "false"
        self.parameters["informative"] = informative ? "true" : "false"
    }

}
