//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import class Foundation.NSNumber

public protocol Decodable {
    typealias DecodedType = Self

    /// - Throws: DecodeError
    static func decode(e: Extractor) throws -> DecodedType
}

extension String: Decodable {
    public static func decode(e: Extractor) throws -> String {
        return try castOrFail(e)
    }
}

extension Int: Decodable {
    public static func decode(e: Extractor) throws -> Int {
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

extension Double: Decodable {
    public static func decode(e: Extractor) throws -> Double {
        return try castOrFail(e)
    }
}

extension Float: Decodable {
    public static func decode(e: Extractor) throws -> Float {
        return try castOrFail(e)
    }
}

extension Bool: Decodable {
    public static func decode(e: Extractor) throws -> Bool {
        return try castOrFail(e)
    }
}

extension NSNumber: Decodable {
    public static func decode(e: Extractor) throws -> NSNumber {
        return try castOrFail(e)
    }
}

private func castOrFail<T>(e: Extractor) throws -> T {
    let rawValue = e.rawValue

    guard let result = rawValue as? T else {
        throw DecodeError.TypeMismatch(expected: "\(T.self)", actual: "\(rawValue)", keyPath: nil)
    }

    return result
}
