//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

/// - Throws: DecodingError
public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> T {
    let extractor = Extractor(object)
    return try T.decode(extractor)
}

/// - Throws: DecodingError
public func decodeArray<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [T] {
    typealias Expected = [AnyObject]

    guard let array = object as? Expected else {
        throw DecodingError.TypeMismatch(keyPath: "", object: object, expected: Expected.self, actual: object.dynamicType)
    }

    return try array.map(decode)
}

/// - Throws: DecodingError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [String: T] {
    typealias Expected = [String: AnyObject]

    guard let dictionary = object as? Expected else {
        throw DecodingError.TypeMismatch(keyPath: "", object: object, expected: Expected.self, actual: object.dynamicType)
    }

    return try dictionary.reduce([:]) { (var accum: [String: T], element) in
        let (key, value) = element
        accum[key] = try decode(value) as T
        return accum
    }
}
