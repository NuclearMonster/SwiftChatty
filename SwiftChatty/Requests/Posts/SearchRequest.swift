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
    public var customParameters: [String : Any] = [:]
    public var timeout: Double = 30

    public init(withTerms terms: String?, author: String?, parentAuthor: String?,
        category: ModerationFlag?, offset: Int?, limit: Int?, oldestFirst: Bool?) {

        if let termsParameter = terms {
            self.customParameters["terms"] = termsParameter 
        }
        if let authorParameter = author {
            self.customParameters["author"] = authorParameter 
        }
        if let parentAuthorParameter = parentAuthor {
            self.customParameters["parentAuthor"] = parentAuthorParameter 
        }
        if let categoryParameter = category {
            self.customParameters["category"] = categoryParameter.rawValue 
        }
        if let offsetParameter = offset {
            self.customParameters["offset"] = offsetParameter 
        }
        if let limitParameter = limit {
            self.customParameters["limit"] = limitParameter 
        }
        if let oldestFirstParameter = oldestFirst {
            self.customParameters["oldestFirst"] = oldestFirstParameter 
        }
    }

}
