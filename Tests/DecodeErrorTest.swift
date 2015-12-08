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

struct URLHolder: Decodable {
    let URL: NSURL

    static func decode(e: Extractor) throws -> URLHolder {
        return self.init(URL: try e <| "url")
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
}
