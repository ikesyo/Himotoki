//
//  NSNumber.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/18/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import class Foundation.NSNumber

extension NSNumber: Decodable {
    public static func decode(e: Extractor) throws -> NSNumber {
        return try castOrFail(e)
    }
}

extension UInt: Decodable {
    public static func decode(e: Extractor) throws -> UInt {
        return try NSNumber.decode(e).unsignedLongValue
    }
}

extension Int8: Decodable {
    public static func decode(e: Extractor) throws -> Int8 {
        return try NSNumber.decode(e).charValue
    }
}

extension UInt8: Decodable {
    public static func decode(e: Extractor) throws -> UInt8 {
        return try NSNumber.decode(e).unsignedCharValue
    }
}

extension Int16: Decodable {
    public static func decode(e: Extractor) throws -> Int16 {
        return try NSNumber.decode(e).shortValue
    }
}

extension UInt16: Decodable {
    public static func decode(e: Extractor) throws -> UInt16 {
        return try NSNumber.decode(e).unsignedShortValue
    }
}

extension Int32: Decodable {
    public static func decode(e: Extractor) throws -> Int32 {
        return try NSNumber.decode(e).intValue
    }
}

extension UInt32: Decodable {
    public static func decode(e: Extractor) throws -> UInt32 {
        return try NSNumber.decode(e).unsignedIntValue
    }
}

extension Int64: Decodable {
    public static func decode(e: Extractor) throws -> Int64 {
        return try NSNumber.decode(e).longLongValue
    }
}

extension UInt64: Decodable {
    public static func decode(e: Extractor) throws -> UInt64 {
        return try NSNumber.decode(e).unsignedLongLongValue
    }
}
