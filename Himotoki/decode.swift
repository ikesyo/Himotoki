//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

/// - Throws: DecodeError
public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> T {
    let extractor = Extractor(object)
    return try T.decode(extractor)
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [T] {
    guard let array = object as? [AnyObject] else {
        throw DecodeError.TypeMismatch(expected: "Array", actual: "\(object)", keyPath: nil)
    }

    return try array.map(decode)
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [String: T] {
    guard let dictionary = object as? [String: AnyObject] else {
        throw DecodeError.TypeMismatch(expected: "Dictionary", actual: "\(object)", keyPath: nil)
    }

    return try dictionary.reduce([:]) { (var accum: [String: T], element) in
        let (key, value) = element
        accum[key] = try decode(value) as T
        return accum
    }
}
