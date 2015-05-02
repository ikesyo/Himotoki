//
//  DecodableTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

class DecodableTest: XCTestCase {

    func testDecodable() {
        var JSON: [String: AnyObject] = [
            "first_name": "ABC",
            "last_name": "DEF",
            "age": 20,
            "height": 175.9,
            "float": 32.1 as Float,
            "bool": true,
        ]

        // Succeeding case
        let person: Person? = decode(JSON)
        XCTAssert(person != nil)
        XCTAssert(person?.firstName == "ABC")
        XCTAssert(person?.lastName == "DEF")
        XCTAssert(person?.age == 20)
        XCTAssert(person?.height == 175.9)
        XCTAssert(person?.float == 32.1)
        XCTAssert(person?.bool == true)

        // Failing case
        JSON["bool"] = nil
        let nilPerson: Person? = decode(JSON)
        XCTAssert(nilPerson == nil)
    }

}

struct Person: Decodable {
    let firstName: String
    let lastName: String
    let age: Int
    let height: Double
    let float: Float
    let bool: Bool

    init?(_ JSON: Extractor) {
        firstName = JSON.valueOrFail("first_name")
        lastName = JSON.valueOrFail("last_name")
        age = JSON.valueOrFail("age")
        height = JSON.valueOrFail("height")
        float = JSON.valueOrFail("float")
        bool = JSON.valueOrFail("bool")

        if !JSON.isValid {
            return nil
        }
    }
}
