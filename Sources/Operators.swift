//
//  Operators.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

infix operator <| : MultiplicationPrecedence
infix operator <|? : MultiplicationPrecedence
infix operator <|| : MultiplicationPrecedence
infix operator <||? : MultiplicationPrecedence
infix operator <|-| : MultiplicationPrecedence
infix operator <|-|? : MultiplicationPrecedence

/// - Throws: DecodeError or an arbitrary ErrorType
public func <| <T: Decodable>(e: Extractor, keyPath: KeyPath) throws -> T {
    return try e.value(keyPath)
}

/// - Throws: DecodeError or an arbitrary ErrorType
public func <|? <T: Decodable>(e: Extractor, keyPath: KeyPath) throws -> T? {
    return try e.valueOptional(keyPath)
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "<|")
public func <|| <T: Decodable>(e: Extractor, keyPath: KeyPath) throws -> [T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "<|?")
public func <||? <T: Decodable>(e: Extractor, keyPath: KeyPath) throws -> [T]? {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "<|")
public func <|-| <T: Decodable>(e: Extractor, keyPath: KeyPath) throws -> [String: T] {
    fatalError()
}

/// - Throws: DecodeError or an arbitrary ErrorType
@available(*, unavailable, renamed: "<|?")
public func <|-|? <T: Decodable>(e: Extractor, keyPath: KeyPath) throws -> [String: T]? {
    fatalError()
}
