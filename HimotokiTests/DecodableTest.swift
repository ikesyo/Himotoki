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

    lazy var personJSON: [String: AnyObject] = {
        let gruopJSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
        var JSON: [String: AnyObject] = [
            "first_name": "ABC",
            "last_name": "DEF",
            "age": 20,
            "int64": NSNumber(longLong: INT64_MAX),
            "height": 175.9,
            "float": 32.1 as Float,
            "bool": true,
            "number": NSNumber(long: 123456789),
            "raw_value": "RawValue",
            "nested": [
                "value": "The nested value",
                "dict": [ "key": "The nested value" ]
            ],
            "array": [ "123", "456" ],
            "arrayOption": NSNull(),
            "dictionary": [ "A": 1, "B": 2 ],
            // "dictionaryOption" key is missing
            "group": gruopJSON,
        ]

        JSON["groups"] = [ gruopJSON, gruopJSON ]

        return JSON
    }()

    func testPerson() {
        var JSON = personJSON

        // Succeeding case
        let person: Person? = try? decode(JSON)
        XCTAssert(person != nil)
        XCTAssert(person?.firstName == "ABC")
        XCTAssert(person?.lastName == "DEF")
        XCTAssert(person?.age == 20)
        XCTAssert(person?.int64 == INT64_MAX)
        XCTAssert(person?.height == 175.9)
        XCTAssert(person?.float == 32.1)
        XCTAssert(person?.bool == true)
        XCTAssert(person?.number == NSNumber(long: 123456789))
        XCTAssert(person?.rawValue as? String == "RawValue")

        XCTAssert(person?.nested == "The nested value")
        XCTAssert(person?.nestedDict["key"] == "The nested value")
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

        // Failing cases

        do {
            JSON["bool"] = nil
            JSON["group"] = nil
            try decode(JSON) as Person
        } catch let DecodeError.MissingKeyPath(keyPath) {
            XCTAssert(keyPath == "bool")
        } catch {
            XCTFail()
        }

        do {
            JSON["age"] = "32"
            try decode(JSON) as Person
        } catch let DecodeError.TypeMismatch(expected, actual, keyPath) {
            XCTAssert(keyPath == "age")
            XCTAssert(actual == "32")
            XCTAssert(expected == "Int")
        } catch {
            XCTFail()
        }
    }

    func testPerformanceByPersons() {
        let peopleJSON = Array(count: 500, repeatedValue: personJSON)

        measureBlock {
            let _: [Person]? = try? decodeArray(peopleJSON)
        }
    }

    func testGroup() {
        var JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]

        let g: Group? = try? decode(JSON)
        XCTAssert(g != nil)
        XCTAssert(g?.name == "Himotoki")
        XCTAssert(g?.floor == 12)
        XCTAssert(g?.optional == nil)

        JSON["name"] = nil
        do {
            try decode(JSON) as Group
        } catch let DecodeError.MissingKeyPath(keyPath) {
            XCTAssert(keyPath == "name")
        } catch {
            XCTFail()
        }
    }

    func testDecodeArray() {
        let JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
        let JSONArray = [ JSON, JSON ]

        let values: [Group]? = try? decodeArray(JSONArray)
        XCTAssert(values != nil)
        XCTAssert(values?.count == 2)
    }

    func testDecodeDictionary() {
        let JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
        let JSONDict = [ "1": JSON, "2": JSON ]

        let values: [String: Group]? = try? decodeDictionary(JSONDict)
        XCTAssert(values != nil)
        XCTAssert(values?.count == 2)
    }

    func testDecodeNumbers() {
        let JSON: [String: AnyObject] = [
            "int": Int.min,
            "uint": UInt.max,
            "int8": NSNumber(char: Int8.min),
            "uint8": NSNumber(unsignedChar: UInt8.max),
            "int16": NSNumber(short: Int16.min),
            "uint16": NSNumber(unsignedShort: UInt16.max),
            "int32": NSNumber(int: Int32.min),
            "uint32": NSNumber(unsignedInt: UInt32.max),
            "int64": NSNumber(longLong: Int64.min),
            "uint64": NSNumber(unsignedLongLong: UInt64.max),
        ]

        let numbers: Numbers? = try? decode(JSON)
        XCTAssert(numbers != nil)
        XCTAssert(numbers?.int == Int.min)
        XCTAssert(numbers?.uint == UInt.max)
        XCTAssert(numbers?.int8 == Int8.min)
        XCTAssert(numbers?.uint8 == UInt8.max)
        XCTAssert(numbers?.int16 == Int16.min)
        XCTAssert(numbers?.uint16 == UInt16.max)
        XCTAssert(numbers?.int32 == Int32.min)
        XCTAssert(numbers?.uint32 == UInt32.max)
        XCTAssert(numbers?.int64 == Int64.min)
        XCTAssert(numbers?.uint64 == UInt64.max)
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
    let rawValue: AnyObject

    let nested: String
    let nestedDict: [String: String]
    let array: [String]
    let arrayOption: [String]?
    let dictionary: [String: Int]
    let dictionaryOption: [String: Int]?

    let group: Group
    let groups: [Group]

    static func decode(e: Extractor) throws -> Person {
        return try Person(
            firstName: e <| "first_name",
            lastName: e <| "last_name",
            age: e <| "age",
            int64: e <| "int64",
            height: e <| "height",
            float: e <| "float",
            bool: e <| "bool",
            number: e <| "number",
            rawValue: (e <| "raw_value" as Extractor).rawValue,
            nested: e <| [ "nested", "value" ],
            nestedDict: e <|-| [ "nested", "dict" ],
            array: e <|| "array",
            arrayOption: e <||? "arrayOption",
            dictionary: e <|-| "dictionary",
            dictionaryOption: e <|-|? "dictionaryOption",
            group: e <| "group",
            groups: e <|| "groups"
        )
    }
}

struct Group: Decodable {
    let name: String
    let floor: Int
    let optional: [String]?

    static func decode(e: Extractor) throws -> Group {
        return try Group(
            name: e <| "name",
            floor: e <| "floor",
            optional: e <||? "optional"
        )
    }
}

struct Numbers: Decodable {
    let int: Int
    let uint: UInt
    let int8: Int8
    let uint8: UInt8
    let int16: Int16
    let uint16: UInt16
    let int32: Int32
    let uint32: UInt32
    let int64: Int64
    let uint64: UInt64

    static func decode(e: Extractor) throws -> Numbers {
        return try Numbers(
            int: e <| "int",
            uint: e <| "uint",
            int8: e <| "int8",
            uint8: e <| "uint8",
            int16: e <| "int16",
            uint16: e <| "uint16",
            int32: e <| "int32",
            uint32: e <| "uint32",
            int64: e <| "int64",
            uint64: e <| "uint64"
        )
    }
}
