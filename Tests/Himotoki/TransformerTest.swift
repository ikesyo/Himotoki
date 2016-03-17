//
//  TransformerTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2/27/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

import Foundation
import XCTest
import Himotoki

private func toURL(s: String) throws -> NSURL {
    if let URL = NSURL(string: s) {
        return URL
    }

    throw customError("Invalid URL string: \(s)")
}

private struct URLsByTransformer: Decodable {
    let value: NSURL
    let valueOptional: NSURL?
    let array: [NSURL]
    let arrayOptional: [NSURL]?
    let dictionary: [String: NSURL]
    let dictionaryOptional: [String: NSURL]?

    static func decode(e: Extractor) throws -> URLsByTransformer {
        let URLTransformer = Transformer(toURL)

        return self.init(
            value: try Transformer { try toURL($0) }.apply(e <| "value"),
            valueOptional: try URLTransformer.apply(e.valueOptional("valueOptional")),
            array: try URLTransformer.apply(e.array("array")),
            arrayOptional: try URLTransformer.apply(e <||? "arrayOptional"),
            dictionary: try URLTransformer.apply(e <|-| "dictionary"),
            dictionaryOptional: try URLTransformer.apply(e.dictionaryOptional("dictionaryOptional"))
        )
    }
}

class TransformerTest: XCTestCase {

    func testTransformerSuccess() {
        let URLString = "http://www.yahoo.co.jp/"
        let URL = NSURL(string: URLString)!
        let JSON: [String: AnyJSON] = [
            "value": URLString,
            "valueOptional": URLString,
            "array": [ URLString, URLString ] as JSONArray,
            "arrayOptional": [ URLString, URLString ] as JSONArray,
            "dictionary": [ "a": URLString, "b": URLString ] as JSONDictionary,
            "dictionaryOptional": [ "a": URLString, "b": URLString ] as JSONDictionary,
        ]

        guard let decoded = try? URLsByTransformer.decodeValue(JSON) else {
            XCTFail()
            return
        }

        XCTAssertEqual(decoded.value, URL)
        XCTAssertEqual(decoded.valueOptional, URL)
        XCTAssertEqual(decoded.array, [ URL, URL ])
        XCTAssertEqual(decoded.arrayOptional!, [ URL, URL ])
        XCTAssertEqual(decoded.dictionary, [ "a": URL, "b": URL ])
        XCTAssertEqual(decoded.dictionaryOptional!, [ "a": URL, "b": URL ])
    }

    func testTransformerFailure() {
        let URLString = "日本語"
        let JSON: [String: AnyJSON] = [
            "value": URLString,
        ]

        do {
            _ = try URLsByTransformer.decodeValue(JSON)
        } catch let DecodeError.Custom(message) {
            XCTAssertEqual(message, "Invalid URL string: \(URLString)")
        } catch {
            XCTFail()
        }
    }
}

#if os(Linux)

extension TransformerTest: XCTestCaseProvider {
    var allTests: [(String, () throws -> Void)] {
        return [
            ("testTransformerSuccess", testTransformerSuccess),
            ("testTransformerFailure", testTransformerFailure),
        ]
    }
}

#endif
