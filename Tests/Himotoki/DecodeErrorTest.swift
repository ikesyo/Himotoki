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

extension NSURL: Decodable {
    public static func decode(e: Extractor) throws -> Self {
        let value = try String.decode(e)

        if value.isEmpty {
            throw DecodeError.MissingKeyPath([])
        }

        if value.hasPrefix("file://") {
            throw customError("File URL is not supported")
        }

        return try castOrFail(NSURL(string: value))
    }
}

private struct URLHolder: Decodable {
    let URL: NSURL

    static func decode(e: Extractor) throws -> URLHolder {
        return self.init(URL: try e <| "url")
    }
}

private struct A: Decodable {
    let b: B?

    static func decode(e: Extractor) throws -> A {
        return self.init(b: try e <|? "b")
    }
}

private struct B: Decodable {
    let string: String

    static func decode(e: Extractor) throws -> B {
        return self.init(string: try e <| "string")
    }
}

class DecodeErrorTest: XCTestCase {

    func testSuccessOfCastOrFail() {
        do {
            let d: [String: AnyJSON] = [ "url": "https://swift.org/" ]
            _ = try URLHolder.decodeValue(d)
        } catch {
            XCTFail("error: \(error)")
        }
    }

    func testMissingKeyPathInDecodeError() {
        do {
            let d: [String: AnyJSON] = [ "url": "" ]
            _ = try URLHolder.decodeValue(d)
        } catch let DecodeError.MissingKeyPath(keyPath) {
            XCTAssertEqual(keyPath, "url")
        } catch {
            XCTFail()
        }
    }

    func testMissingKeyPathAndDecodeFailure() {
        let d: [String: AnyJSON] = [:]
        let a = try! A.decodeValue(d)
        XCTAssertNil(a.b)

        do {
            let d: [String: AnyJSON] = [ "b": [:] as JSONDictionary ]
            _ = try A.decodeValue(d)
            XCTFail("DecodeError.MissingKeyPath should be thrown if decoding optional value failed")
        } catch let DecodeError.MissingKeyPath(keyPath) {
            XCTAssertEqual(keyPath, [ "b", "string" ])
        } catch {
            XCTFail()
        }
    }

    func testTypeMismatchKeyPathReporting() {
        do {
            let d: [String: AnyJSON] = [ "b": [ "string": 123 ] as JSONDictionary ]
            _ = try A.decodeValue(d)
            XCTFail("DecodeError.TypeMismatch should be thrown")
        } catch let DecodeError.TypeMismatch(_, _, keyPath) {
            XCTAssertEqual(keyPath, [ "b", "string" ])
        } catch {
            XCTFail()
        }
    }

    func testCustomError() {
        do {
            let d: [String: AnyJSON] = [ "url": "file:///Users/foo/bar" ]
            _ = try URLHolder.decodeValue(d)
        } catch let DecodeError.Custom(message) {
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

#if os(Linux)

extension DecodeErrorTest: XCTestCaseProvider {
    var allTests: [(String, () throws -> Void)] {
        return [
            ("testMissingKeyPathInDecodeError", testMissingKeyPathInDecodeError),
            ("testMissingKeyPathAndDecodeFailure", testMissingKeyPathAndDecodeFailure),
            ("testTypeMismatchKeyPathReporting", testTypeMismatchKeyPathReporting),
            ("testCustomError", testCustomError),
            ("testHashableConformance", testHashableConformance),
        ]
    }
}

#endif
