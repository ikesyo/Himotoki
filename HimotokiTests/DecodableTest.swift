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
            "int64": NSNumber(longLong: INT64_MAX),
            "height": 175.9,
            "float": 32.1 as Float,
            "bool": true,
            "number": NSNumber(long: 123456789),
            "nested": [ "value": "The nested value" ],
            "array": [ "123", "456" ],
            "arrayOption": NSNull(),
            "dictionary": [ "A": 1, "B": 2 ],
            // "dictionaryOption" key is missing
            "group": [ "name": "Himotoki", "floor": 12 ],
        ]

        JSON["people"] = [ JSON, JSON ]

        // Succeeding case
        let person: Person? = decode(JSON)
        XCTAssert(person != nil)
        XCTAssert(person?.firstName == "ABC")
        XCTAssert(person?.lastName == "DEF")
        XCTAssert(person?.age == 20)
        XCTAssert(person?.int64 == INT64_MAX)
        XCTAssert(person?.height == 175.9)
        XCTAssert(person?.float == 32.1)
        XCTAssert(person?.bool == true)
        XCTAssert(person?.number == NSNumber(long: 123456789))

        XCTAssert(person?.nested == "The nested value")
        XCTAssert(person?.array.count == 2)
        XCTAssert(person?.array.first == "123")
        XCTAssert(person?.arrayOption == nil)
        XCTAssert(person?.dictionary.count == 2)
        XCTAssert(person?.dictionary["A"] == 1)
        XCTAssert(person?.dictionaryOption == nil)

        XCTAssert(person?.people.count == 2)
        XCTAssert(person?.group.name == "Himotoki")
        XCTAssert(person?.group.floor == 12)
        XCTAssert(person?.group.optional == nil)

        // Failing case
        JSON["bool"] = nil
        JSON["group"] = nil
        let nilPerson: Person? = decode(JSON)
        XCTAssert(nilPerson == nil)
    }

}

struct Person: Decodable {
    let firstName: String
    let lastName: String
    let age: Int
    let int64: Int64
    let height: Double
    let float: Float
    let bool: Bool
    let number: NSNumber

    let nested: String
    let array: [String]
    let arrayOption: [String]?
    let dictionary: [String: Int]
    let dictionaryOption: [String: Int]?

    let people: [Person]
    let group: Group

    static func decode(e: Extractor) -> Person? {
        return e.decodeWith { e in
            Person(
                firstName: e <| "first_name",
                lastName: e <| "last_name",
                age: e <| "age",
                int64: e <| "int64",
                height: e <| "height",
                float: e <| "float",
                bool: e <| "bool",
                number: e <| "number",
                nested: e <| "nested.value",
                array: e <|| "array",
                arrayOption: e <||? "arrayOption",
                dictionary: e <|-| "dictionary",
                dictionaryOption: e <|-|? "dictionaryOption",
                people: e <|| "people",
                group: e <| "group"
            )
        }
    }
}

struct Group: Decodable {
    let name: String
    let floor: Int
    let optional: String?

    static func decode(e: Extractor) -> Group? {
        return e.decodeWith { e in
            Group(
                name: e <| "name",
                floor: e <| "floor",
                optional: e <|? "optional"
            )
        }
    }
}
