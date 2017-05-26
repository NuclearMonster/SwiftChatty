//
//  GetCategoryFiltersRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/27/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// SeeAlso: http://winchatty.com/v2/readme#_Toc421451697
public struct GetCategoryFiltersRequest: Request {

    public let endpoint: ApiEndpoint = .GetCategoryFilters
    public var customParameters: [String : Any] = [:]

    public init(withUsername username: String) {
        self.customParameters["username"] = username 
    }

}
