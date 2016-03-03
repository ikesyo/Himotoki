//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

/// - Throws: DecodeError
public func decodeValue<T: Decodable where T.DecodedType == T>(JSON: AnyJSON) throws -> T {
    let extractor = Extractor(JSON)
    return try T.decode(extractor)
}

/// - Throws: DecodeError
public func decodeValue<T: Decodable where T.DecodedType == T>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> T {
    return try decodeValue(JSON) <| rootKeyPath
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(JSON: AnyJSON) throws -> [T] {
    guard let array = JSON as? [AnyJSON] else {
        throw typeMismatch("Array", actual: JSON, keyPath: nil)
    }

    return try array.map(decodeValue)
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> [T] {
    return try decodeValue(JSON) <|| rootKeyPath
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(JSON: AnyJSON) throws -> [String: T] {
    guard let dictionary = JSON as? [String: AnyJSON] else {
        throw typeMismatch("Dictionary", actual: JSON, keyPath: nil)
    }

    var result = [String: T](minimumCapacity: dictionary.count)
    try dictionary.forEach { key, value in
        result[key] = try decodeValue(value) as T
    }
    return result
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> [String: T] {
    return try decodeValue(JSON) <|-| rootKeyPath
}

// MARK: - Deprecated

/// - Throws: DecodeError
@available(*, deprecated, renamed="decodeValue")
public func decode<T: Decodable where T.DecodedType == T>(JSON: AnyJSON) throws -> T {
    return try decodeValue(JSON)
}

/// - Throws: DecodeError
@available(*, deprecated, renamed="decodeValue")
public func decode<T: Decodable where T.DecodedType == T>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> T {
    return try decodeValue(JSON)
}
