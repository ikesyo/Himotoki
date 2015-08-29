//
//  Operators.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

infix operator <| { associativity left precedence 150 }
infix operator <|? { associativity left precedence 150 }
infix operator <|| { associativity left precedence 150 }
infix operator <||? { associativity left precedence 150 }
infix operator <|-| { associativity left precedence 150 }
infix operator <|-|? { associativity left precedence 150 }

/// - Throws: DecodingError
public func <| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> T {
    return try e.value(keyPath)
}

/// - Throws: DecodingError
public func <|? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> T? {
    return try e.valueOptional(keyPath)
}

/// - Throws: DecodingError
public func <|| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [T] {
    return try e.array(keyPath)
}

/// - Throws: DecodingError
public func <||? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [T]? {
    return try e.arrayOptional(keyPath)
}

/// - Throws: DecodingError
public func <|-| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [String: T] {
    return try e.dictionary(keyPath)
}

/// - Throws: DecodingError
public func <|-|? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [String: T]? {
    return try e.dictionaryOptional(keyPath)
}
