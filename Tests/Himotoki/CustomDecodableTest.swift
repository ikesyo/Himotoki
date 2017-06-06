//
//  CustomDecodableTest.swift
//  Himotoki
//
//  Created by Tomohiro Kumagai on 4/26/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

import XCTest
import Himotoki

/// Using non final class Decodable #118

private class A: CustomDecodableType {
    var type : Int = 0
    var title: String = ""
    
    init (e: Extractor) {
        type = try! e <| "type"
        title = try! e <| "title"
    }
    
    static func decode(e: Extractor) throws -> A {
        let type : Int = try e <| "type"
        switch type {
        case 0:
            return B(e: e)
        case 1:
            return C(e: e)
        case 2:
            return A(e: e)
        default:
            fatalError()
        }
    }
}

private class B: A {
    var total : Double = 0.0
    override init(e: Extractor) {
        total = try! e <| "total"
        super.init(e: e)
    }
}

private class C: A {
    var link : String = ""
    override init(e: Extractor) {
        link = try! e <| "link"
        super.init(e: e)
    }
}

private struct TestForSimple : Decodable {
    
    var item1: CustomDecodable<A>
    var item2: CustomDecodable<A>
    var item3: CustomDecodable<A>
    
    static func decode(e: Extractor) throws -> TestForSimple {
        
        return try TestForSimple(item1: e <| "item1", item2: e <| "item2", item3: e <| "item3")
    }
}

private struct TestWithConvert : Decodable {
    
    var item1: A
    var item2: A
    var item3: A

    static func decode(e: Extractor) throws -> TestWithConvert {

        let item1 = try e.value("item1") as CustomDecodable<A>
        let item2 = try e.value("item2") as CustomDecodable<A>
        let item3 = try e.value("item3") as CustomDecodable<A>
        
        return TestWithConvert(item1: item1.value, item2: item2.value, item3: item3.value)
    }
}

class CustomDecodableTest: XCTestCase {

    func testDecode() {

        let json0: [String : AnyJSON] = [ "type" : 0, "title" : "TITLE 0", "total" : 0.5, "link" : "LINK 1" ]
        let json1: [String : AnyJSON] = [ "type" : 1, "title" : "TITLE 1", "total" : 1.8, "link" : "LINK 2" ]
        let json2: [String : AnyJSON] = [ "type" : 2, "title" : "TITLE 2", "total" : 2.3, "link" : "LINK 3" ]
        
        let instance0 = try! decodeValue(json0) as CustomDecodable<A>
        let instance1 = try! decodeValue(json1) as CustomDecodable<A>
        let instance2 = try! decodeValue(json2) as CustomDecodable<A>

        // Check `type` and `title`
        
        XCTAssertEqual(instance0.value.type, 0)
        XCTAssertEqual(instance0.value.title, "TITLE 0")

        XCTAssertEqual(instance1.value.type, 1)
        XCTAssertEqual(instance1.value.title, "TITLE 1")

        XCTAssertEqual(instance2.value.type, 2)
        XCTAssertEqual(instance2.value.title, "TITLE 2")
        
        // Check Inheritance

        XCTAssertTrue(instance0.value is B)
        XCTAssertFalse(instance0.value is C)
        
        XCTAssertFalse(instance1.value is B)
        XCTAssertTrue(instance1.value is C)

        XCTAssertFalse(instance2.value is B)
        XCTAssertFalse(instance2.value is C)
        
        XCTAssertEqual(String(instance0.value.dynamicType), String(B.self))
        XCTAssertNotEqual(String(instance0.value.dynamicType), String(A.self))
        XCTAssertNotEqual(String(instance0.value.dynamicType), String(C.self))
        
        XCTAssertEqual(String(instance1.value.dynamicType), String(C.self))
        XCTAssertNotEqual(String(instance1.value.dynamicType), String(A.self))
        XCTAssertNotEqual(String(instance1.value.dynamicType), String(B.self))
        
        XCTAssertEqual(String(instance2.value.dynamicType), String(A.self))
        XCTAssertNotEqual(String(instance2.value.dynamicType), String(B.self))
        XCTAssertNotEqual(String(instance2.value.dynamicType), String(C.self))
        
        let b0 = instance0.value as? B
        let b1 = instance1.value as? B
        let b2 = instance2.value as? B

        let c0 = instance0.value as? C
        let c1 = instance1.value as? C
        let c2 = instance2.value as? C

        XCTAssertEqual(b0?.total, 0.5)
        XCTAssertEqual(b1?.total, nil)
        XCTAssertEqual(b2?.total, nil)
        
        XCTAssertEqual(c0?.link, nil)
        XCTAssertEqual(c1?.link, "LINK 2")
        XCTAssertEqual(c2?.link, nil)
    }
    
    func testNestedDecode() {
        
        let json0: [String : AnyJSON] = [ "type" : 0, "title" : "TITLE 0", "total" : 0.5, "link" : "LINK 1" ]
        let json1: [String : AnyJSON] = [ "type" : 1, "title" : "TITLE 1", "total" : 1.8, "link" : "LINK 2" ]
        let json2: [String : AnyJSON] = [ "type" : 2, "title" : "TITLE 2", "total" : 2.3, "link" : "LINK 3" ]

        let json: [String : AnyJSON] = [ "item1" : json0, "item2" : json1, "item3" : json2 ]
        
        let instanceForSimple = try? decodeValue(json) as TestForSimple
        let instanceWithConvert = try? decodeValue(json) as TestWithConvert
        
        XCTAssertEqual(instanceForSimple?.item1.value.title, "TITLE 0")
        XCTAssertEqual(instanceForSimple?.item2.value.title, "TITLE 1")
        XCTAssertEqual(instanceForSimple?.item3.value.title, "TITLE 2")
        XCTAssertEqual(instanceForSimple?.item1.value.type, 0)
        XCTAssertEqual(instanceForSimple?.item2.value.type, 1)
        XCTAssertEqual(instanceForSimple?.item3.value.type, 2)
        XCTAssertEqual(instanceForSimple.map { String($0.item1.value.dynamicType) }, String(B.self))
        XCTAssertEqual(instanceForSimple.map { String($0.item2.value.dynamicType) }, String(C.self))
        XCTAssertEqual(instanceForSimple.map { String($0.item3.value.dynamicType) }, String(A.self))
        
        XCTAssertEqual(instanceWithConvert?.item1.title, "TITLE 0")
        XCTAssertEqual(instanceWithConvert?.item2.title, "TITLE 1")
        XCTAssertEqual(instanceWithConvert?.item3.title, "TITLE 2")
        XCTAssertEqual(instanceWithConvert?.item1.type, 0)
        XCTAssertEqual(instanceWithConvert?.item2.type, 1)
        XCTAssertEqual(instanceWithConvert?.item3.type, 2)
        XCTAssertEqual(instanceWithConvert.map { String($0.item1.dynamicType) }, String(B.self))
        XCTAssertEqual(instanceWithConvert.map { String($0.item2.dynamicType) }, String(C.self))
        XCTAssertEqual(instanceWithConvert.map { String($0.item3.dynamicType) }, String(A.self))
    }
}

#if os(Linux)
    
    extension CustomDecodableTest: XCTestCaseProvider {
        var allTests: [(String, () throws -> Void)] {
            return [
                ("testDecode", testDecode),
                ("testNestedDecode", testNestedDecode),
            ]
        }
    }
    
#endif
