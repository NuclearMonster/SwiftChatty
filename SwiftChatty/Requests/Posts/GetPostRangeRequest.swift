//
//  GetPostRangeRequest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/17/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451672
public struct GetPostRangeRequest: Request {

    public let endpoint: ApiEndpoint = .GetPostRange
    public var parameters: [String : AnyObject] = [:]

    public init(withStartId startId: Int, count: Int, reverse: Bool = false) {
        self.parameters["startId"] = startId
        self.parameters["count"] = count
        self.parameters["reverse"] = reverse ? "true" : "false"
    }

}
