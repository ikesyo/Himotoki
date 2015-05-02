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
            "nested": [ "value": "The nested value" ],
            "group": [ "name": "Himotoki", "floor": 12 ],
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
        XCTAssert(person?.nested == "The nested value")
        XCTAssert(person?.group.name == "Himotoki")
        XCTAssert(person?.group.floor == 12)

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
    let nested: String
    let group: Group

    static func decode(e: Extractor) -> Person? {
        let value = Person(
            firstName: e.valueOrFail("first_name"),
            lastName: e.valueOrFail("last_name"),
            age: e.valueOrFail("age"),
            height: e.valueOrFail("height"),
            float: e.valueOrFail("float"),
            bool: e.valueOrFail("bool"),
            nested: e.valueOrFail("nested.value"),
            group: e.valueOrFail("group")
        )

        if e.isValid {
            return value
        } else {
            return nil
        }
    }
}

struct Group: Decodable {
    let name: String
    let floor: Int

    static func decode(e: Extractor) -> Group? {
        let value = Group(
            name: e.valueOrFail("name"),
            floor: e.valueOrFail("floor")
        )

        if e.isValid {
            return value
        } else {
            return nil
        }
    }
}
