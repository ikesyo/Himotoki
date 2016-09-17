//
//  NestedObjectParsingTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/30/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

class NestedObjectParsingTest: XCTestCase {

    func testParseNestedObjectSuccess() {
        let JSON: JSONDictionary = [ "nested": [ "name": "Foo Bar" ] as JSONDictionary ]
        let success = try? WithNestedObject.decodeValue(JSON)
        XCTAssertNotNil(success)
        XCTAssertEqual(success?.nestedName, "Foo Bar")
    }

    func testParseNestedObjectFailure() {
        let JSON: JSONDictionary = [ "nested": "Foo Bar" ]
        let failure = try? WithNestedObject.decodeValue(JSON)
        XCTAssertNil(failure)
    }
}

extension NestedObjectParsingTest {
    static var allTests: [(String, (NestedObjectParsingTest) -> () throws -> Void)] {
        return [
            ("testParseNestedObjectSuccess", testParseNestedObjectSuccess),
            ("testParseNestedObjectFailure", testParseNestedObjectFailure),
        ]
    }
}

struct WithNestedObject: Decodable {
    let nestedName: String

    static func decode(_ e: Extractor) throws -> WithNestedObject {
        return self.init(nestedName: try e <| [ "nested", "name" ])
    }
}
