//
//  Client.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright (c) 2016 Andre Bocchini. All rights reserved.
//

import Alamofire
import Genome

/// Network client used to make network requests to the Chatty API
public final class Client {

    /// Places a request using the Request object passed into it, and stores the
    /// response in the corresponding case in ClientRequestResult depending on whether the request
    /// was successful or not.
    ///
    /// - parameter request: The Request object containing details about the API endpoint we want
    ///   to reach and any necessary parameters.
    /// - parameter completion: A completion block to handle the response.  It takes a Response
    ///   object as a parameter.  This response object should be a corresponding object to the
    ///   request that was made so it can be mapped properly.  For example, a GetPostRequest
    ///   should be matched by a GetPostResponse.
    public static func request<SerializedObject: Response>
        (request: Request, completion: ClientRequestResult<SerializedObject> -> Void) {

        Alamofire.request(request).responseJSON(options: .AllowFragments) { response in
            switch response.result {
            case .Success(let value):
                do {
                    let shackRequestResult = try SerializedObject(js: value)
                    completion(.Success(shackRequestResult))
                } catch {
                    do {
                        let error = try ApiErrorResponse(js: value)
                        switch error.code {
                        case "ERR_ARGUMENT":
                            completion(.Failure(Error.ArgumentError(message: error.message)))
                        case "ERR_SERVER":
                            completion(.Failure(Error.ServerError(message: error.message)))
                        default:
                            completion(.Failure(Error.UnkownError))
                        }
                    } catch {
                        completion(.Failure(Error.MappingError))
                    }
                }
            case .Failure(let error):
                completion(.Failure(
                    Error.SystemError(code: error.code, domain: error.domain)))
            }
        }
    }

}
