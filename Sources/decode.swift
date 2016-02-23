//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

/// - Throws: DecodeError
@available(*, unavailable, renamed="decodeValue")
@noreturn public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> T {
}

/// - Throws: DecodeError
@available(*, unavailable, renamed="decodeValue")
@noreturn public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> T {
}

/// - Throws: DecodeError
public func decodeValue<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> T {
    let extractor = Extractor(object)
    return try T.decode(extractor)
}

/// - Throws: DecodeError
public func decodeValue<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> T {
    return try decodeValue(object) <| rootKeyPath
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [T] {
    guard let array = object as? [AnyObject] else {
        throw typeMismatch("Array", actual: object, keyPath: nil)
    }

    return try array.map(decodeValue)
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> [T] {
    return try decodeValue(object) <|| rootKeyPath
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [String: T] {
    guard let dictionary = object as? [String: AnyObject] else {
        throw typeMismatch("Dictionary", actual: object, keyPath: nil)
    }

    var result = [String: T](minimumCapacity: dictionary.count)
    try dictionary.forEach { key, value in
        result[key] = try decodeValue(value) as T
    }
    return result
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> [String: T] {
    return try decodeValue(object) <|-| rootKeyPath
}
