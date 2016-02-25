//
//  ErrorsTest.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 2/25/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import XCTest

@testable import SwiftChatty

class ErrorsTest: XCTestCase {

    func testServerError() {
        let error: Error = Error.ServerError(message: "Error message")

        switch(error) {
        case .ServerError(let message):
            XCTAssertEqual(message, "Error message")
        default:
            XCTFail()
        }
    }

}
