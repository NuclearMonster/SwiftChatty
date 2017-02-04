//
//  GetPostRangeRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451672
public struct GetPostRangeRequest: Request {

    public let endpoint: ApiEndpoint = .GetPostRange
    public var customParameters: [String : Any] = [:]

    public init(withStartId startId: Int, count: Int, reverse: Bool = false) {
        self.customParameters["startId"] = startId
        self.customParameters["count"] = count
        self.customParameters["reverse"] = reverse ? "true" : "false"
    }

}
