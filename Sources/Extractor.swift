//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import struct Foundation.Data
import class Foundation.JSONSerialization
import class Foundation.NSNull

// swiftlint:disable type_name
#if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
import class Foundation.NSDictionary
private typealias _Dictionary = NSDictionary
#else
private typealias _Dictionary = [String: Any]
#endif
// swiftlint:enable type_name

public struct Extractor {
    public let rawValue: Any
    private let dictionary: _Dictionary?

    internal init(from data: Data) throws {
        do {
            let json = try JSONSerialization.jsonObject(with: data)
            self.init(json)
        } catch {
            throw customError("The given data was not valid JSON.")
        }
    }

    internal init(_ rawValue: Any) {
        self.rawValue = rawValue
        self.dictionary = rawValue as? _Dictionary
    }

    // If we use `rawValue` here, that would conflict with `let rawValue: Any`
    // on Linux. This naming is avoiding the weird case.
    private func _rawValue(_ keyPath: KeyPath) throws -> Any? {
        guard let dictionary = dictionary else {
            throw typeMismatch("Dictionary", actual: rawValue, keyPath: keyPath)
        }

        return valueFor(keyPath, dictionary)
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

private func valueFor(_ keyPath: KeyPath, _ json: Any) -> Any? {
    var result = json
    for key in keyPath.components {
        if let object = result as? _Dictionary, let value = object[key] {
            result = value
        } else {
            return nil
        }
    }

    if result is NSNull {
        return nil
    }

    return result
}
