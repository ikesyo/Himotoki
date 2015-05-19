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

    func testPerson() {
        var gruopJSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
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
            "group": gruopJSON,
        ]

        JSON["groups"] = [ gruopJSON, gruopJSON ]

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

        XCTAssert(person?.group.name == "Himotoki")
        XCTAssert(person?.group.floor == 12)
        XCTAssert(person?.group.optional == nil)
        XCTAssert(person?.groups.count == 2)

        // Failing case
        JSON["bool"] = nil
        JSON["group"] = nil
        let nilPerson: Person? = decode(JSON)
        XCTAssert(nilPerson == nil)
    }

    func testGroup() {
        var JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]

        let g: Group? = decode(JSON)
        XCTAssert(g != nil)
        XCTAssert(g?.name == "Himotoki")
        XCTAssert(g?.floor == 12)
        XCTAssert(g?.optional == nil)

        JSON["name"] = nil
        let f: Group? = decode(JSON)
        XCTAssert(f == nil)
    }

    func testDecodeArray() {
        let JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
        let JSONArray = [ JSON, JSON ]

        let values: [Group]? = decode(JSONArray)
        XCTAssert(values != nil)
        XCTAssert(values?.count == 2)
    }

    func testDecodeDictionary() {
        let JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
        let JSONDict = [ "1": JSON, "2": JSON ]

        let values: [String: Group]? = decode(JSONDict)
        XCTAssert(values != nil)
        XCTAssert(values?.count == 2)
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

    let group: Group
    let groups: [Group]

    static func decode(e: Extractor) -> Person? {
        let create = { Person($0) }
        return build(
            e <| "first_name",
            e <| "last_name",
            e <| "age",
            e <| "int64",
            e <| "height",
            e <| "float",
            e <| "bool",
            e <| "number",
            e <| "nested.value",
            e <|| "array",
            e <||? "arrayOption",
            e <|-| "dictionary",
            e <|-|? "dictionaryOption",
            e <| "group",
            e <|| "groups"
        ).map(create)
    }
}

struct Group: Decodable {
    let name: String
    let floor: Int
    let optional: [String]?

    static func decode(e: Extractor) -> Group? {
        let create = { Group($0) }
        return build(
            e <| "name",
            e <| "floor",
            e <||? "optional"
        ).map(create)
    }
}
