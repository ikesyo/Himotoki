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
    if let array = object as? [AnyObject] {
        return try array.map(decode)
    } else {
        throw DecodingError.TypeMismatch("\(object) is not an array.")
    }
}

/// - Throws: DecodingError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [String: T] {
    if let dictionary = object as? [String: AnyObject] {
        return try dictionary.reduce([:]) { (var accum: [String: T], element) in
            let (key, value) = element
            accum[key] = try decode(value) as T
            return accum
        }
    } else {
        throw DecodingError.TypeMismatch("\(object) is not a dictionary.")
    }
}
