//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import Foundation

public struct Extractor {
    public let rawValue: AnyObject
    private let isDictionary: Bool

    internal init(_ rawValue: AnyObject) {
        self.rawValue = rawValue
        self.isDictionary = rawValue is NSDictionary
    }

    private func rawValue(keyPath: KeyPath) throws -> AnyObject? {
        guard isDictionary else {
            throw typeMismatch("Dictionary", actual: rawValue, keyPath: keyPath)
        }

        let components = ArraySlice(keyPath.components)
        return valueFor(components, rawValue)
    }

    /// - Throws: DecodeError
    public func value<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) throws -> T {
        guard let rawValue = try rawValue(keyPath) else {
            throw DecodeError.MissingKeyPath(keyPath)
        }
        
        do {
            return try decode(rawValue)
        } catch DecodeError.MissingKeyPath {
            throw DecodeError.MissingKeyPath(keyPath)
        } catch let DecodeError.TypeMismatch(expected, actual, _) {
            throw DecodeError.TypeMismatch(expected: expected, actual: actual, keyPath: keyPath)
        }
    }
    
    /// - Throws: DecodeError
    public func value<T: Decodable, U where T.DecodedType == T>(keyPath: KeyPath, typeFrom: T.Type = T.self, converter: T throws -> U) throws -> U {
        let valueFrom: T = try value(keyPath)
        return try converter(valueFrom)
    }

    /// - Throws: DecodeError
    public func valueOptional<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) throws -> T? {
        do {
            return try value(keyPath) as T
        } catch DecodeError.MissingKeyPath {
            return nil
        }
    }
    
    /// - Throws: DecodeError
    public func valueOptional<T: Decodable, U where T.DecodedType == T>(keyPath: KeyPath, typeFrom: T.Type = T.self, converter: T -> U?) throws -> U? {
        guard let valueFrom: T = try valueOptional(keyPath) else {
            return nil
        }
        return converter(valueFrom)
    }
    
    /// - Throws: DecodeError
    public func array<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) throws -> [T] {
        guard let array: [T] = try arrayOptional(keyPath) else {
            throw DecodeError.MissingKeyPath(keyPath)
        }

        return array
    }
    
    /// - Throws: DecodeError
    public func array<T: Decodable, U where T.DecodedType == T>(keyPath: KeyPath, typeFrom: T.Type = T.self, converter: T throws -> U) throws -> [U] {
        let arrayFrom: [T] = try array(keyPath)
        return try arrayFrom.map(converter)
    }
    
    /// - Throws: DecodeError
    public func arrayOptional<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) throws -> [T]? {
        return try rawValue(keyPath).map(decodeArray)
    }
    
    /// - Throws: DecodeError
    public func arrayOptional<T: Decodable, U where T.DecodedType == T>(keyPath: KeyPath, typeFrom: T.Type = T.self, converter: T -> U?) throws -> [U]? {
        guard let arrayFrom: [T] = try arrayOptional(keyPath) else {
            return nil
        }
        
        return arrayFrom.flatMap { converter($0) }
    }

    /// - Throws: DecodeError
    public func dictionary<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) throws -> [String: T] {
        guard let dictionary: [String: T] = try dictionaryOptional(keyPath) else {
            throw DecodeError.MissingKeyPath(keyPath)
        }

        return dictionary
    }
    
    /// - Throws: DecodeError
    public func dictionary<T: Decodable, U where T.DecodedType == T>(keyPath: KeyPath, typeFrom: T.Type = T.self, converter: T throws -> U) throws -> [String: U] {
        let dictionaryFrom: [String: T] = try dictionary(keyPath)
        return try dictionaryFrom.reduce([String: U]()) { (var dict, from) in
            dict[from.0] = try converter(from.1)
            return dict
        }
    }

    /// - Throws: DecodeError
    public func dictionaryOptional<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) throws -> [String: T]? {
        return try rawValue(keyPath).map(decodeDictionary)
    }
    
    /// - Throws: DecodeError
    public func dictionaryOptional<T: Decodable, U where T.DecodedType == T>(keyPath: KeyPath, typeFrom: T.Type = T.self, converter: T -> U?) throws -> [String: U]? {
        guard let dictionaryFrom: [String: T] = try dictionaryOptional(keyPath) else {
            return nil
        }
        
        return dictionaryFrom.reduce([String: U]()) { (var dict, from) in
            dict[from.0] = converter(from.1)
            return dict
        }
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
private func valueFor<C: CollectionType where C.Generator.Element == String, C.SubSequence == C>(keyPathComponents: C, _ object: AnyObject) -> AnyObject? {
    guard let first = keyPathComponents.first, case let nested?? = object[first] where !(nested is NSNull) else {
        return nil
    }

    if keyPathComponents.count == 1 {
        return nested
    }

    let tail = keyPathComponents.dropFirst()
    return valueFor(tail, nested)
}
