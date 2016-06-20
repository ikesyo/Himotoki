//
//  StandardLib.swift
//  Himotoki
//
//  Created by Syo Ikeda on 11/18/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

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
        return try castOrFail(e)
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

// MARK: - Extensions

extension CollectionType where Generator.Element: Decodable {
    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decode(JSON: AnyJSON) throws -> [Generator.Element] {
        guard let array = JSON as? [AnyJSON] else {
            throw typeMismatch("Array", actual: JSON, keyPath: nil)
        }

        return try array.map(Generator.Element.decodeValue)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decode(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> [Generator.Element] {
        return try Extractor(JSON).array(rootKeyPath)
    }
}

extension DictionaryLiteralConvertible where Value: Decodable {
    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decode(JSON: AnyJSON) throws -> [String: Value] {
        guard let dictionary = JSON as? [String: AnyJSON] else {
            throw typeMismatch("Dictionary", actual: JSON, keyPath: nil)
        }

        var result = [String: Value](minimumCapacity: dictionary.count)
        try dictionary.forEach { key, value in
            result[key] = try Value.decodeValue(value)
        }
        return result
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decode(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> [String: Value] {
        return try Extractor(JSON).dictionary(rootKeyPath)
    }
}
