//
//  StandardLib.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/18/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

import struct Foundation.Data
import class Foundation.JSONSerialization

extension String: Decodable {
    public static func decode(_ e: Extractor) throws -> String {
        return try castOrFail(e)
    }
}

extension Int: Decodable {
    public static func decode(_ e: Extractor) throws -> Int {
        return try castOrFail(e)
    }
}

extension UInt: Decodable {
    public static func decode(_ e: Extractor) throws -> UInt {
        return try castOrFail(e)
    }
}

extension Double: Decodable {
    public static func decode(_ e: Extractor) throws -> Double {
        return try castOrFail(e)
    }
}

extension Float: Decodable {
    public static func decode(_ e: Extractor) throws -> Float {
        return try castOrFail(e)
    }
}

extension Bool: Decodable {
    public static func decode(_ e: Extractor) throws -> Bool {
        return try castOrFail(e)
    }
}

// MARK: - Extensions

extension Array: Decodable where Element: Decodable {
    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decode(_ e: Extractor) throws -> [Element] {
        guard let array = e.rawValue as? [Any] else {
            throw typeMismatch("Array", actual: e.rawValue)
        }

        return try array.map(Element.decodeValue)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(from:)")
    public static func decode(from data: Data) throws -> [Element] {
        fatalError()
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(_:)")
    public static func decode(_ JSON: Any) throws -> [Element] {
        fatalError()
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(from:rootKeyPath:)")
    public static func decode(from data: Data, rootKeyPath: KeyPath) throws -> [Element] {
        fatalError()
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(_:rootKeyPath:)")
    public static func decode(_ JSON: Any, rootKeyPath: KeyPath) throws -> [Element] {
        fatalError()
    }
}

extension Dictionary: Decodable where Key == String, Value: Decodable {
    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decode(_ e: Extractor) throws -> [String: Value] {
        guard let dictionary = e.rawValue as? [String: Any] else {
            throw typeMismatch("Dictionary", actual: e.rawValue)
        }

        return try dictionary.mapValues(Value.decodeValue)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(from:)")
    public static func decode(from data: Data) throws -> [String: Value] {
        fatalError()
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(_:)")
    public static func decode(_ JSON: Any) throws -> [String: Value] {
        fatalError()
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(from:rootKeyPath:)")
    public static func decode(from data: Data, rootKeyPath: KeyPath) throws -> [String: Value] {
        fatalError()
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    @available(*, unavailable, renamed: "decodeValue(_:rootKeyPath:)")
    public static func decode(_ JSON: Any, rootKeyPath: KeyPath) throws -> [String: Value] {
        fatalError()
    }
}
