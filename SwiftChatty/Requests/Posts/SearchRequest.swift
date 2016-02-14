//
//  SearchRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/18/16.
//  Copyright (c) 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451676
public struct SearchRequest: Request {

    public let endpoint: ApiEndpoint = .Search
    public var parameters: [String : AnyObject] = [:]
    public var timeout: Double = 30

    public init(withTerms terms: String?, author: String?, parentAuthor: String?,
        category: ModerationFlag?, offset: Int?, limit: Int?, oldestFirst: Bool?) {

        if let termsParameter = terms {
            self.parameters["terms"] = termsParameter
        }
        if let authorParameter = author {
            self.parameters["author"] = authorParameter
        }
        if let parentAuthorParameter = parentAuthor {
            self.parameters["parentAuthor"] = parentAuthorParameter
        }
        if let categoryParameter = category {
            self.parameters["category"] = categoryParameter.rawValue
        }
        if let offsetParameter = offset {
            self.parameters["offset"] = offsetParameter
        }
        if let limitParameter = limit {
            self.parameters["limit"] = limitParameter
        }
        if let oldestFirstParameter = oldestFirst {
            self.parameters["oldestFirst"] = oldestFirstParameter
        }
    }

}
