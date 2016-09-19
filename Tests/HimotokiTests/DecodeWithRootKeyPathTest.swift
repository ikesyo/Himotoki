//
//  DecodeWithRootKeyPathTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/10/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

class DecodeWithRootKeyPathTest: XCTestCase {

    lazy var JSON: JSONDictionary = {
        return [
            "name": "name",
            "floor": 123,
            "optional": [ "foo", "bar" ],
        ]
    }()

    func testDecodeWithRootKeyValue() {
        let objectWithValue: JSONDictionary = [ "group": JSON ]

        var group: Group?

        group = try? decodeValue(objectWithValue)
        XCTAssertNil(group)

        group = try? decodeValue(objectWithValue, rootKeyPath: "group")
        XCTAssertNotNil(group)
    }

    func testDecodeWithRootKeyArray() {
        let objectWithArray: JSONDictionary = [ "groups": [ JSON, JSON ] ]

        var groups: [Group]?

        groups = try? decodeArray(objectWithArray)
        XCTAssertNil(groups)

        groups = try? decodeArray(objectWithArray, rootKeyPath: "groups")
        XCTAssertNotNil(groups)
        XCTAssertEqual(groups?.count, 2)
    }

    func testDecodeWithRootKeyDictionary() {
        let objectWithDictionary: JSONDictionary = [ "groupDict": [ "foo": JSON, "bar": JSON ] ]

        var groups: [String: Group]?

        groups = try? decodeDictionary(objectWithDictionary)
        XCTAssertNil(groups)

        groups = try? decodeDictionary(objectWithDictionary, rootKeyPath: "groupDict")
        XCTAssertNotNil(groups)
        XCTAssertEqual(groups?.count, 2)
        XCTAssertEqual(groups?.keys.contains("foo"), true)
        XCTAssertEqual(groups?.keys.contains("bar"), true)
    }
}

extension DecodeWithRootKeyPathTest {
    static var allTests: [(String, (DecodeWithRootKeyPathTest) -> () throws -> Void)] {
        return [
            ("testDecodeWithRootKeyValue", testDecodeWithRootKeyValue),
            ("testDecodeWithRootKeyArray", testDecodeWithRootKeyArray),
            ("testDecodeWithRootKeyDictionary", testDecodeWithRootKeyDictionary),
        ]
    }
}
