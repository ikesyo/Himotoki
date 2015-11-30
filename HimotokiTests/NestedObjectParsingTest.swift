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
        let success: WithNestedObject? = try? decode([ "nested": [ "name": "Foo Bar" ] ])
        XCTAssertNotNil(success)
        XCTAssertEqual(success?.nestedName, "Foo Bar")
    }

    func testParseNestedObjectFailure() {
        let failure: WithNestedObject? = try? decode([ "nested": "Foo Bar" ])
        XCTAssertNil(failure)
    }
}

struct WithNestedObject: Decodable {
    let nestedName: String

    static func decode(e: Extractor) throws -> WithNestedObject {
        return self.init(nestedName: try e <| [ "nested", "name" ])
    }
}
