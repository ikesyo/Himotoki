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

public extension Array where Element: Decodable, Element == Element.DecodedType {
    public static func decode(object: AnyObject, ignoreErrors: Bool = false) throws -> [Element] {
        guard let array = object as? [AnyObject] else {
            throw typeMismatch("Array", actual: object, keyPath: nil)
        }

        if ignoreErrors {
            return array.flatMap { try? Element.decode($0) }
        } else {
            return try array.map(Element.decode)
        }
    }
}

public extension Dictionary where Value: Decodable, Value == Value.DecodedType {
    public static func decode(object: AnyObject) throws -> [String: Value] {
        guard let dictionary = object as? [String: AnyObject] else {
            throw typeMismatch("Dictionary", actual: object, keyPath: nil)
        }

        var result: [String: Value] = [:]
        try dictionary.forEach { key, value in
            result[key] = try Value.decode(value)
        }
        return result
    }
}

internal func castOrFail<T>(e: Extractor) throws -> T {
    let rawValue = e.rawValue

    guard let result = rawValue as? T else {
        throw typeMismatch("\(T.self)", actual: rawValue, keyPath: nil)
    }

    return result
}
