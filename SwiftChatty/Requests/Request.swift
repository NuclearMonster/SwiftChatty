//
//  Request.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Alamofire

public protocol Request: URLRequestConvertible {

    var api: ApiRoot { get }
    var endpoint: ApiEndpoint { get }
    var timeout: Double { get }
    var headers: [String: String] { get }
    var httpMethod: Alamofire.Method { get }
    var account: Account { get }
    var parameters: [String : AnyObject] { get }
    var parametersEncoding: Alamofire.ParameterEncoding { get }

}

public extension Request {

    public var api: ApiRoot {
        return .WinChatty
    }

    public var timeout: Double {
        return 30.0
    }

    public var headers: [String:String] {
        return [:]
    }

    public var httpMethod: Alamofire.Method {
        return .GET
    }

    public var account: Account {
        return Account()
    }

    public var parameters: [String : AnyObject] {
        return [:]
    }

    public var parametersEncoding: Alamofire.ParameterEncoding {
        return .URL
    }
}

public extension Request {

    public var URLRequest: NSMutableURLRequest {
        let urlString = self.api.rawValue + self.endpoint.rawValue
        let url = NSURL(string: urlString)!
        let urlRequest = NSMutableURLRequest(URL: url, cachePolicy: .ReloadIgnoringLocalCacheData,
            timeoutInterval: self.timeout)

        urlRequest.HTTPMethod = self.httpMethod.rawValue

        for (headerName, headerValue) in self.headers {
            urlRequest.setValue(headerValue, forKey: headerName)
        }

        var customParameters = parameters
        if let username = self.account.username, let password = self.account.password {
            customParameters["username"] = username
            customParameters["password"] = password
        }

        let (URLRequest, _) = self.parametersEncoding.encode(urlRequest,
            parameters: customParameters)

        return URLRequest
    }

}
