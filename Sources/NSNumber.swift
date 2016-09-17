//
//  NSNumber.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/18/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import class Foundation.NSNumber

extension NSNumber: Decodable {
    public static func decode(_ e: Extractor) throws -> Self {
        return try castOrFail(e)
    }
}

extension Int8: Decodable {
    public static func decode(_ e: Extractor) throws -> Int8 {
        return try NSNumber.decode(e).int8Value
    }
}

extension UInt8: Decodable {
    public static func decode(_ e: Extractor) throws -> UInt8 {
        return try NSNumber.decode(e).uint8Value
    }
}

extension Int16: Decodable {
    public static func decode(_ e: Extractor) throws -> Int16 {
        return try NSNumber.decode(e).int16Value
    }
}

extension UInt16: Decodable {
    public static func decode(_ e: Extractor) throws -> UInt16 {
        return try NSNumber.decode(e).uint16Value
    }
}

extension Int32: Decodable {
    public static func decode(_ e: Extractor) throws -> Int32 {
        return try NSNumber.decode(e).int32Value
    }
}

extension UInt32: Decodable {
    public static func decode(_ e: Extractor) throws -> UInt32 {
        return try NSNumber.decode(e).uint32Value
    }
}

extension Int64: Decodable {
    public static func decode(_ e: Extractor) throws -> Int64 {
        return try NSNumber.decode(e).int64Value
    }
}

extension UInt64: Decodable {
    public static func decode(_ e: Extractor) throws -> UInt64 {
        return try NSNumber.decode(e).uint64Value
    }
}
