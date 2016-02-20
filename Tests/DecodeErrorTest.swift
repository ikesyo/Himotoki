//
//  DecodeErrorTest.swift
//  Himotoki
//
//  Created by Syo Ikeda on 10/21/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

extension NSURL: Decodable {
    public static func decode(e: Extractor) throws -> NSURL {
        let value = try String.decode(e)
        if value.isEmpty {
            throw DecodeError.MissingKeyPath([])
        }

        return NSURL(string: value)!
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

    func testMissingKeyPathInDecodeError() {
        do {
            let d: [String: AnyObject] = [ "url": "" ]
            let _: URLHolder = try decode(d)
        } catch let DecodeError.MissingKeyPath(keyPath) {
            XCTAssertEqual(keyPath, "url")
        } catch {
            XCTFail()
        }
    }

    func testMissingKeyPathAndDecodeFailure() {
        let d: [String: AnyObject] = [:]
        let a: A = try! decode(d)
        XCTAssertNil(a.b)

        do {
            let d: [String: AnyObject] = [ "b": [:] ]
            let _: A = try decode(d)
            XCTFail("DecodeError.MissingKeyPath should be thrown if decoding optional value failed")
        } catch let DecodeError.MissingKeyPath(keyPath) {
            XCTAssertEqual(keyPath, [ "b", "string" ])
        } catch {
            XCTFail()
        }
    }
}
