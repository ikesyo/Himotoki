//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeValue<T: Decodable>(JSON: AnyJSON) throws -> T {
    return try T.decodeValue(JSON)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeValue<T: Decodable>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> T {
    return try T.decodeValue(JSON, rootKeyPath: rootKeyPath)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeArray<T: Decodable>(JSON: AnyJSON) throws -> [T] {
    return try [T].decode(JSON)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeArray<T: Decodable>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> [T] {
    return try [T].decode(JSON, rootKeyPath: rootKeyPath)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeDictionary<T: Decodable>(JSON: AnyJSON) throws -> [String: T] {
    return try [String: T].decode(JSON)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeDictionary<T: Decodable>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> [String: T] {
    return try [String: T].decode(JSON, rootKeyPath: rootKeyPath)
}

// MARK: - Deprecated

/// - Throws: DecodeError
@available(*, unavailable, renamed="decodeValue")
@noreturn public func decode<T: Decodable>(JSON: AnyJSON) throws -> T {}

/// - Throws: DecodeError
@available(*, unavailable, renamed="decodeValue")
@noreturn public func decode<T: Decodable>(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> T {}
