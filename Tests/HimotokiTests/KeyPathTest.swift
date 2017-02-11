//
//  KeyPathTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 3/12/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

class KeyPathTest: XCTestCase {

    func testEmptyKeyPath() {
        let empty = KeyPath.empty
        XCTAssertEqual(empty, KeyPath([]))
    }
}

extension KeyPathTest {
    static var allTests: [(String, (KeyPathTest) -> () throws -> Void)] {
        return [
            ("testEmptyKeyPath", testEmptyKeyPath),
        ]
    }
}
