//
//  Request.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.

import Alamofire

public protocol Request: URLRequestConvertible {

    var api: ApiRoot { get }
    var endpoint: ApiEndpoint { get }
    var timeout: Double { get }
    var headers: [String: String] { get }
    var httpMethod: HTTPMethod { get }
    var account: Account { get }
    var customParameters: [String : Any] { get }

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

    public var httpMethod: HTTPMethod {
        return .get
    }

    public var account: Account {
        return Account()
    }

    public var customParameters: [String : Any] {
        return [:]
    }
    
    public var parameters: [String : Any] {
        if let username = self.account.username, let password = self.account.password {
            var parameters = self.customParameters
            
            parameters["username"] = username 
            parameters["password"] = password 
            
            return parameters
        } else if self.customParameters.count > 0 {
            return self.customParameters
        } else {
            return [:]
        }
    }
    
    public var encoding: Alamofire.URLEncoding {
        return .queryString
    }
    
}

public extension Request {

    /// Returns a URL request or throws if an `Error` was encountered.
    ///
    /// - throws: An `Error` if the underlying `URLRequest` is `nil`.
    ///
    /// - returns: A URL request.
    public func asURLRequest() throws -> URLRequest {
        let urlString = self.api.rawValue + self.endpoint.rawValue
        
        guard let url = URL(string: urlString) else {
            throw AFError.invalidURL(url: urlString)
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: self.timeout)

        urlRequest.httpMethod = self.httpMethod.rawValue
        
        for (headerName, headerValue) in self.headers {
            urlRequest.setValue(headerValue, forHTTPHeaderField: headerName)
        }

        let encodedURLRequest = try URLEncoding.queryString.encode(urlRequest, with: self.parameters)
        
        return encodedURLRequest
    }

}
