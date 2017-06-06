//
//  DecodeErrorTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 10/21/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import Foundation
import XCTest
import Himotoki

extension URL: Himotoki.Decodable {
    public static func decode(_ e: Extractor) throws -> URL {
        let value = try String.decode(e)

        if value.isEmpty {
            throw DecodeError.missingKeyPath([])
        }

        if value.hasPrefix("file://") {
            throw customError("File URL is not supported")
        }

        return try castOrFail(self.init(string: value) as Any)
    }
}

private struct URLHolder: Himotoki.Decodable {
    let url: URL

    static func decode(_ e: Extractor) throws -> URLHolder {
        return self.init(url: try e <| "url")
    }
}

private struct A: Himotoki.Decodable { // swiftlint:disable:this type_name
    let b: B? // swiftlint:disable:this variable_name

    static func decode(_ e: Extractor) throws -> A {
        return self.init(b: try e <|? "b")
    }
}

private struct B: Himotoki.Decodable { // swiftlint:disable:this type_name
    let string: String

    static func decode(_ e: Extractor) throws -> B {
        return self.init(string: try e <| "string")
    }
}

class DecodeErrorTest: XCTestCase {

    func testSuccessOfCastOrFail() {
        do {
            let d: [String: Any] = [ "url": "https://swift.org/" ]
            _ = try URLHolder.decodeValue(d)
        } catch {
            XCTFail("error: \(error)")
        }
    }

    func testMissingKeyPathInDecodeError() {
        do {
            let d: [String: Any] = [ "url": "" ]
            _ = try URLHolder.decodeValue(d)
        } catch let DecodeError.missingKeyPath(keyPath) {
            XCTAssertEqual(keyPath, "url")
        } catch {
            XCTFail()
        }
    }

    func testMissingKeyPathAndDecodeFailure() {
        let d: [String: Any] = [:]
        let a = try! A.decodeValue(d) // swiftlint:disable:this force_try
        XCTAssertNil(a.b)

        do {
            let d: [String: Any] = [ "b": [:] ]
            _ = try A.decodeValue(d)
            XCTFail("DecodeError.missingKeyPath should be thrown if decoding optional value failed")
        } catch let DecodeError.missingKeyPath(keyPath) {
            XCTAssertEqual(keyPath, [ "b", "string" ])
        } catch {
            XCTFail()
        }
    }

    func testTypeMismatchKeyPathReporting() {
        do {
            let d: [String: Any] = [ "b": [ "string": 123 ] ]
            _ = try A.decodeValue(d)
            XCTFail("DecodeError.typeMismatch should be thrown")
        } catch let DecodeError.typeMismatch(_, _, keyPath) {
            XCTAssertEqual(keyPath, [ "b", "string" ])
        } catch {
            XCTFail()
        }
    }

    func testCustomError() {
        do {
            let d: [String: Any] = [ "url": "file:///Users/foo/bar" ]
            _ = try URLHolder.decodeValue(d)
        } catch let DecodeError.custom(message) {
            XCTAssertEqual(message, "File URL is not supported")
        } catch {
            XCTFail()
        }
    }

    func testHashableConformance() {
        let missingKeyPath = Himotoki.missingKeyPath([ "foo", "bar" ])
        XCTAssertEqual(missingKeyPath, missingKeyPath)
        XCTAssertEqual(missingKeyPath.hashValue, missingKeyPath.hashValue)

        let typeMismatch = Himotoki.typeMismatch("Int", actual: String.self, keyPath: [ "baz" ])
        XCTAssertEqual(typeMismatch, typeMismatch)
        XCTAssertEqual(typeMismatch.hashValue, typeMismatch.hashValue)

        let customError = Himotoki.customError("This is a custom error")
        XCTAssertEqual(customError, customError)
        XCTAssertEqual(customError.hashValue, customError.hashValue)
    }
}

extension DecodeErrorTest {
    static var allTests: [(String, (DecodeErrorTest) -> () throws -> Void)] {
        return [
            ("testMissingKeyPathInDecodeError", testMissingKeyPathInDecodeError),
            ("testMissingKeyPathAndDecodeFailure", testMissingKeyPathAndDecodeFailure),
            ("testTypeMismatchKeyPathReporting", testTypeMismatchKeyPathReporting),
            ("testCustomError", testCustomError),
            ("testHashableConformance", testHashableConformance),
        ]
    }
}
