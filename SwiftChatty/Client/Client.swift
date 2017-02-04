//
//  Client.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright (c) 2016 Andre Bocchini. All rights reserved.

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
    /// - parameter completion: A completion block to handle the response.  It takes a 
    ///   MappableResponse object as a parameter.  This response object should be a corresponding 
    ///   object to the request that was made so it can be mapped properly.  For example, a 
    ///   GetPostRequest should be matched by a GetPostResponse.
    public static func request<SerializedObject: MappableResponse>
        (_ request: Request, completion: @escaping (ClientRequestResult<SerializedObject>) -> Void) {

        Alamofire.request(request).responseData {
            (response: DataResponse) in
            
            switch response.result {
            case .success(let value):
                do {
                    let shackRequestResult = try SerializedObject(node: value)
                    completion(.success(shackRequestResult))
                } catch {
                    do {
                        let error = try ApiErrorResponse(node: value)
                        switch error.code {
                        case "ERR_ARGUMENT":
                            completion(.failure(SwiftChattyError.argumentError(message: error.message)))
                        case "ERR_SERVER":
                            completion(.failure(SwiftChattyError.serverError(message: error.message)))
                        case "ERR_INVALID_LOGIN":
                            completion(.failure(SwiftChattyError.invalidLoginError))
                        case "ERR_TOO_MANY_EVENTS":
                            completion(.failure(SwiftChattyError.tooManyEvents))
                        default:
                            completion(.failure(SwiftChattyError.unkownError))
                        }
                    } catch {
                        completion(.failure(SwiftChattyError.mappingError))
                    }
                }
            case .failure(let error):
                completion(.failure(SwiftChattyError.systemError(localizedDescription: error.localizedDescription)))
            }
        }
    }

    /// Places a request using the Request object passed into it, and stores the
    /// response in the corresponding case in ClientRequestResult depending on whether the request
    /// was successful or not.
    ///
    /// Since the WinChatty API does not allow you to LOL posts, this request method is made
    /// to take a special post object with parameters that allows it to talk to the ThomW's lol
    /// server.
    ///
    /// - parameter request: The Request object containing details about the API endpoint we want
    ///   to reach and any necessary parameters.
    /// - parameter completion: A completion block to handle the response.  It takes a 
    ///   LolPostResponse object as a parameter.
    public static func request
        (_ request: Request, completion: @escaping (ClientRequestResult<LolPostResponse>) -> Void) {

        Alamofire.request(request).responseString {
            (response: DataResponse) in
            
            switch response.result {
            case .success(let message):
                if message.hasPrefix("ok") {
                    let lolResponse: LolPostResponse = LolPostResponse(message: message)
                    completion(.success(lolResponse))
                } else {
                    completion(.failure(SwiftChattyError.lolError(message: message)))
                }
            case .failure(let error):
                completion(.failure(
                    SwiftChattyError.systemError(localizedDescription: error.localizedDescription)))
            }
        }
    }

}
