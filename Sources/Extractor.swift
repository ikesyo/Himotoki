//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import Foundation

#if os(Linux)
    public typealias AnyJSON = Any
#else
    public typealias AnyJSON = AnyObject
#endif

public struct Extractor {
    public let rawValue: AnyJSON
    private let isDictionary: Bool

    internal init(_ rawValue: AnyJSON) {
        self.rawValue = rawValue
        #if os(Linux)
            self.isDictionary = rawValue is [String: AnyJSON]
        #else
            self.isDictionary = rawValue is NSDictionary
        #endif
    }

    // If we use `rawValue` here, that would conflict with `let rawValue: AnyJSON`
    // on Linux. This naming is avoiding the weird case.
    private func _rawValue(keyPath: KeyPath) throws -> AnyJSON? {
        guard isDictionary else {
            throw typeMismatch("Dictionary", actual: rawValue, keyPath: keyPath)
        }

        let components = ArraySlice(keyPath.components)
        return valueFor(components, rawValue)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func value<T: Decodable>(keyPath: KeyPath) throws -> T {
        guard let rawValue = try _rawValue(keyPath) else {
            throw DecodeError.MissingKeyPath(keyPath)
        }

        do {
            return try T.decodeValue(rawValue)
        } catch let DecodeError.MissingKeyPath(missing) {
            throw DecodeError.MissingKeyPath(keyPath + missing)
        } catch let DecodeError.TypeMismatch(expected, actual, mismatched) {
            throw DecodeError.TypeMismatch(expected: expected, actual: actual, keyPath: keyPath + mismatched)
        }
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func valueOptional<T: Decodable>(keyPath: KeyPath) throws -> T? {
        do {
            return try value(keyPath) as T
        } catch let DecodeError.MissingKeyPath(missing) where missing == keyPath {
            return nil
        }
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func array<T: Decodable>(keyPath: KeyPath) throws -> [T] {
        guard let array: [T] = try arrayOptional(keyPath) else {
            throw DecodeError.MissingKeyPath(keyPath)
        }

        return array
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func arrayOptional<T: Decodable>(keyPath: KeyPath) throws -> [T]? {
        return try _rawValue(keyPath).map([T].decode)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func dictionary<T: Decodable>(keyPath: KeyPath) throws -> [String: T] {
        guard let dictionary: [String: T] = try dictionaryOptional(keyPath) else {
            throw DecodeError.MissingKeyPath(keyPath)
        }

        return dictionary
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func dictionaryOptional<T: Decodable>(keyPath: KeyPath) throws -> [String: T]? {
        return try _rawValue(keyPath).map([String: T].decode)
    }
}

extension Extractor: Decodable {
    public static func decode(e: Extractor) throws -> Extractor {
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
private func valueFor<C: CollectionType where C.Generator.Element == String, C.SubSequence == C>(keyPathComponents: C, _ JSON: AnyJSON) -> AnyJSON? {
    #if os(Linux)
    guard let
        first = keyPathComponents.first,
        let nativeDict = JSON as? [String: AnyJSON],
        case let nested? = nativeDict[first] where !(nested is NSNull) else
    {
        return nil
    }
    #else
    guard let first = keyPathComponents.first, case let nested?? = JSON[first] where !(nested is NSNull) else {
        return nil
    }
    #endif

    if keyPathComponents.count == 1 {
        return nested
    }

    let tail = keyPathComponents.dropFirst()
    return valueFor(tail, nested)
}
