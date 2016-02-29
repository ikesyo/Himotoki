//
//  TransformerTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2/27/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

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
        return self.init(
            value: try e <| ("value", transform: toURL),
            valueOptional: try e <|? ("valueOptional", transform: toURL),
            array: try e <|| ("array", transform: toURL),
            arrayOptional: try e <||? ("arrayOptional", transform: toURL),
            dictionary: try e <|-| ("dictionary", transform: toURL),
            dictionaryOptional: try e <|-|? ("dictionaryOptional", transform: toURL)
        )
    }
}

class TransformerTest: XCTestCase {

    func testTransformerSuccess() {
        let URLString = "http://www.yahoo.co.jp/"
        let URL = NSURL(string: URLString)!
        let JSON: [String: AnyObject] = [
            "value": URLString,
            "valueOptional": URLString,
            "array": [ URLString, URLString ],
            "arrayOptional": [ URLString, URLString ],
            "dictionary": [ "a": URLString, "b": URLString ],
            "dictionaryOptional": [ "a": URLString, "b": URLString ],
        ]

        guard let decoded: URLsByTransformer = try? decode(JSON) else {
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
        let JSON: [String: AnyObject] = [
            "value": URLString,
        ]

        do {
            _ = try decode(JSON) as URLsByTransformer
        } catch let DecodeError.Custom(message) {
            XCTAssertEqual(message, "Invalid URL string: \(URLString)")
        } catch {
            XCTFail()
        }
    }
}
