//
//  ShackRequestResult.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/22/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

/// Holds the objects returned from a network request.
public enum ClientRequestResult<ResponseType> {

    /// In the case of a success, the Success case should hold and object
    /// that conforms to the MappableResponse protocol, or LolResponse
    case Success(ResponseType)
    /// In the case of an error, the Failure case should an object that
    /// conforms to error type
    case Failure(Error)

}
