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

    private func rawValue(keyPath: String) -> AnyObject? {
        if let dictionary = rawValue as? [String: AnyObject] {
            let components = ArraySlice(split(keyPath) { $0 == "." })
            return valueFor(components, dictionary)
        } else {
            return nil
        }
    }

    public func value<T: Decodable where T.DecodedType == T>(keyPath: String) -> Optional<T> {
        return rawValue(keyPath).flatMap(decode)
    }

    public func valueOptional<T: Decodable where T.DecodedType == T>(keyPath: String) -> Optional<T?> {
        return Optional(value(keyPath))
    }

    public func array<T: Decodable where T.DecodedType == T>(keyPath: String) -> Optional<[T]> {
        return rawValue(keyPath).flatMap(decode)
    }

    public func arrayOptional<T: Decodable where T.DecodedType == T>(keyPath: String) -> Optional<[T]?> {
        return Optional(array(keyPath))
    }

    public func dictionary<T: Decodable where T.DecodedType == T>(keyPath: String) -> Optional<[String: T]> {
        return rawValue(keyPath).flatMap(decode)
    }

    public func dictionaryOptional<T: Decodable where T.DecodedType == T>(keyPath: String) -> Optional<[String: T]?> {
        return Optional(dictionary(keyPath))
    }
}

// Implement it as a tail recursive function.
//
// `ArraySlice` is used for performance optimization.
// See https://gist.github.com/norio-nomura/d9ec7212f2cfde3fb662.
private func valueFor(keyPathComponents: ArraySlice<String>, dictionary: [String: AnyObject]) -> AnyObject? {
    if keyPathComponents.isEmpty {
        return nil
    }

    if let object: AnyObject = dictionary[keyPathComponents.first!] {
        switch object {
        case is NSNull:
            return nil

        case let dict as [String: AnyObject] where keyPathComponents.count > 1:
            let tail = dropFirst(keyPathComponents)
            return valueFor(tail, dict)
            
        default:
            return object
        }
    }
    
    return nil
}
