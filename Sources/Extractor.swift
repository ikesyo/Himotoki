//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import class Foundation.NSNull

public struct Extractor {
    public let rawValue: Any
    private let isDictionary: Bool

    internal init(_ rawValue: Any) {
        self.rawValue = rawValue
        self.isDictionary = rawValue is [String: Any]
    }

    // If we use `rawValue` here, that would conflict with `let rawValue: Any`
    // on Linux. This naming is avoiding the weird case.
    private func _rawValue(_ keyPath: KeyPath) throws -> Any? {
        guard isDictionary else {
            throw typeMismatch("Dictionary", actual: rawValue, keyPath: keyPath)
        }

        return extract(from: rawValue as! [String: Any], for: keyPath)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func value<T: Decodable>(_ keyPath: KeyPath) throws -> T {
        guard let value: T = try valueOptional(keyPath) else {
            throw DecodeError.missingKeyPath(keyPath)
        }

        return value
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func valueOptional<T: Decodable>(_ keyPath: KeyPath) throws -> T? {
        guard let rawValue = try _rawValue(keyPath) else {
            return nil
        }

        do {
            return try T.decodeValue(rawValue)
        } catch let DecodeError.missingKeyPath(missing) {
            throw DecodeError.missingKeyPath(keyPath + missing)
        } catch let DecodeError.typeMismatch(expected, actual, mismatched) {
            throw DecodeError.typeMismatch(expected: expected, actual: actual, keyPath: keyPath + mismatched)
        }
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func array<T: Decodable>(_ keyPath: KeyPath) throws -> [T] {
        guard let array: [T] = try arrayOptional(keyPath) else {
            throw DecodeError.missingKeyPath(keyPath)
        }

        return array
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func arrayOptional<T: Decodable>(_ keyPath: KeyPath) throws -> [T]? {
        return try _rawValue(keyPath).map([T].decode)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func dictionary<T: Decodable>(_ keyPath: KeyPath) throws -> [String: T] {
        guard let dictionary: [String: T] = try dictionaryOptional(keyPath) else {
            throw DecodeError.missingKeyPath(keyPath)
        }

        return dictionary
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func dictionaryOptional<T: Decodable>(_ keyPath: KeyPath) throws -> [String: T]? {
        return try _rawValue(keyPath).map([String: T].decode)
    }
}

extension Extractor: Decodable {
    public static func decode(_ e: Extractor) throws -> Extractor {
        return e
    }
}

extension Extractor: CustomStringConvertible {
    public var description: String {
        return "Extractor(\(rawValue))"
    }
}

// Implement it as a tail recursive function.
//
// `ArraySlice` is used for performance optimization.
// See https://gist.github.com/norio-nomura/d9ec7212f2cfde3fb662.
private func extract(from jsonObject: [String: Any], for keyPath: KeyPath) -> Any? {
    switch keyPath.storage {
    case .empty:
        return nil

    case let .single(key):
        return extract(from: jsonObject, key: key)

    case var .array(array):
        let key = array[0]
        if let inner = extract(from: jsonObject, key: key) as? [String: Any] {
            return extract(from: inner, for: KeyPath(Array(array.dropFirst())))
        } else {
            return nil
        }
    }
}

private func extract(from jsonObject: [String: Any], key: String) -> Any? {
    guard
        let value = jsonObject[key],
        !(value is NSNull) else // swiftlint:disable:this opening_brace
    {
        return nil
    }

    return value
}
