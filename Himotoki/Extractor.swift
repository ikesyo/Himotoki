//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public struct Extractor {
    public let rawValue: AnyObject

    internal init(_ rawValue: AnyObject) {
        self.rawValue = rawValue
    }

    private func rawValue(keyPath: KeyPath) -> AnyObject? {
        let components = ArraySlice(keyPath.components)
        return valueFor(components, rawValue)
    }

    public func value<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) -> Optional<T> {
        return rawValue(keyPath).flatMap(decode)
    }

    public func valueOptional<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) -> Optional<T?> {
        return Optional(value(keyPath))
    }

    public func array<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) -> Optional<[T]> {
        return rawValue(keyPath).flatMap(decodeArray)
    }

    public func arrayOptional<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) -> Optional<[T]?> {
        return Optional(array(keyPath))
    }

    public func dictionary<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) -> Optional<[String: T]> {
        return rawValue(keyPath).flatMap(decodeDictionary)
    }

    public func dictionaryOptional<T: Decodable where T.DecodedType == T>(keyPath: KeyPath) -> Optional<[String: T]?> {
        return Optional(dictionary(keyPath))
    }
}

extension Extractor: Decodable {
    public static func decode(e: Extractor) -> Extractor? {
        return e
    }
}

// Implement it as a tail recursive function.
//
// `ArraySlice` is used for performance optimization.
// See https://gist.github.com/norio-nomura/d9ec7212f2cfde3fb662.
private func valueFor(keyPathComponents: ArraySlice<String>, _ object: AnyObject) -> AnyObject? {
    guard let first = keyPathComponents.first else {
        return nil
    }

    guard let _nested = object[first], nested = _nested else {
        return nil
    }

    if nested is NSNull {
        return nil
    } else if keyPathComponents.count > 1 {
        let tail = keyPathComponents.dropFirst()
        return valueFor(tail, nested)
    } else {
        return nested
    }
}
