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

    func testNilLiteral() {
        let fromNilLiteral: KeyPath = nil
        XCTAssertEqual(fromNilLiteral, KeyPath.empty)
    }
}

#if os(Linux)

extension KeyPathTest: XCTestCaseProvider {
    var allTests: [(String, () throws -> Void)] {
        return [
            ("testEmptyKeyPath", testEmptyKeyPath),
            ("testNilLiteral", testNilLiteral),
        ]
    }
}
    
#endif
