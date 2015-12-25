//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

/// - Throws: DecodeError
public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> T {
    return try T.decode(object)
}

/// - Throws: DecodeError
public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> T {
    return try T.decode(object, rootKeyPath: rootKeyPath)
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [T] {
    return try [T].decode(object, ignoreErrors: false)
}

/// - Throws: DecodeError
public func decodeArray<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> [T] {
    return try Extractor.decode(object) <|| rootKeyPath
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject) throws -> [String: T] {
    return try [String: T].decode(object)
}

/// - Throws: DecodeError
public func decodeDictionary<T: Decodable where T.DecodedType == T>(object: AnyObject, rootKeyPath: KeyPath) throws -> [String: T] {
    return try Extractor.decode(object) <|-| rootKeyPath
}
