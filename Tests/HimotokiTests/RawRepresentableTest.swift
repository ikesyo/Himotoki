//
//  RawRepresentableTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 9/27/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

enum StringEnum: String {
    case A, B, C
}

enum IntEnum: Int {
    case zero, one
}

enum DoubleEnum: Double {
    case one = 1.0
    case two = 2.0
}

extension StringEnum: Decodable {}
extension IntEnum: Decodable {}
extension DoubleEnum: Decodable {}

class RawRepresentableTest: XCTestCase {

    func testRawRepresentable() {
        let JSON: [String: Any] = [
            "string_1": "A",
            "string_2": "D",
            "int_1": 1,
            "int_2": 3,
            "double_1": 2.0,
            "double_2": 4.0,
        ]

        let e = try! Extractor.decodeValue(JSON) // swiftlint:disable:this force_try

        let A: StringEnum? = try? e <| "string_1"
        let D: StringEnum? = try? e <| "string_2"
        XCTAssert(A == .A)
        XCTAssert(D == nil)

        let int1: IntEnum? = try? e <| "int_1"
        let int3: IntEnum? = try? e <| "int_3"
        XCTAssert(int1 == .one)
        XCTAssert(int3 == nil)

        let double2: DoubleEnum? = try? e <| "double_1"
        let double4: DoubleEnum? = try? e <| "double_2"
        XCTAssert(double2 == .two)
        XCTAssert(double4 == nil)
    }

}

extension RawRepresentableTest {
    static var allTests: [(String, (RawRepresentableTest) -> () throws -> Void)] {
        return [
            ("testRawRepresentable", testRawRepresentable),
        ]
    }
}
