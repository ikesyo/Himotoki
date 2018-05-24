//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

import struct Foundation.Data

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeValue<T: Decodable>(from data: Data) throws -> T {
    return try T.decodeValue(from: data)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeValue<T: Decodable>(_ JSON: Any) throws -> T {
    return try T.decodeValue(JSON)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeValue<T: Decodable>(from data: Data, rootKeyPath: KeyPath) throws -> T {
    return try T.decodeValue(from: data, rootKeyPath: rootKeyPath)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func decodeValue<T: Decodable>(_ JSON: Any, rootKeyPath: KeyPath) throws -> T {
    return try T.decodeValue(JSON, rootKeyPath: rootKeyPath)
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(from:)")
public func decodeArray<T: Decodable>(from data: Data) throws -> [T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(_:)")
public func decodeArray<T: Decodable>(_ JSON: Any) throws -> [T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(from:rootKeyPath:)")
public func decodeArray<T: Decodable>(from data: Data, rootKeyPath: KeyPath) throws -> [T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(_:rootKeyPath:)")
public func decodeArray<T: Decodable>(_ JSON: Any, rootKeyPath: KeyPath) throws -> [T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(from:)")
public func decodeDictionary<T: Decodable>(from data: Data) throws -> [String: T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(_:)")
public func decodeDictionary<T: Decodable>(_ JSON: Any) throws -> [String: T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(from:rootKeyPath:)")
public func decodeDictionary<T: Decodable>(from data: Data, rootKeyPath: KeyPath) throws -> [String: T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "decodeValue(_:rootKeyPath:)")
public func decodeDictionary<T: Decodable>(_ JSON: Any, rootKeyPath: KeyPath) throws -> [String: T] {
    fatalError()
}
