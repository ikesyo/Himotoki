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
infix operator <^> { associativity left precedence 130 }

/// - Throws: DecodeError
public func <| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> T {
    return try e.value(keyPath)
}

/// - Throws: DecodeError
public func <| <T: Decodable, U where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> (T throws -> U) throws -> U {
    return { converter in
        return try e.value(keyPath, converter: converter)
    }
}

/// - Throws: DecodeError
public func <|? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> T? {
    return try e.valueOptional(keyPath)
}

/// - Throws: DecodeError
public func <|? <T: Decodable, U where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> (T -> U?) throws -> U? {
    return { converter in
        return try e.valueOptional(keyPath, converter: converter)
    }
}

/// - Throws: DecodeError
public func <|| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [T] {
    return try e.array(keyPath)
}

/// - Throws: DecodeError
public func <|| <T: Decodable, U where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> (T throws -> U) throws -> [U] {
    return { converter in
        return try e.array(keyPath, converter: converter)
    }
}

/// - Throws: DecodeError
public func <||? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [T]? {
    return try e.arrayOptional(keyPath)
}

/// - Throws: DecodeError
public func <||? <T: Decodable, U where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> (T -> U?) throws -> [U]? {
    return { converter in
        return try e.arrayOptional(keyPath, converter: converter)
    }
}

/// - Throws: DecodeError
public func <|-| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [String: T] {
    return try e.dictionary(keyPath)
}

/// - Throws: DecodeError
public func <|-| <T: Decodable, U where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> (T throws -> U) throws -> [String: U] {
    return { converter in
        return try e.dictionary(keyPath, converter: converter)
    }
}

/// - Throws: DecodeError
public func <|-|? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) throws -> [String: T]? {
    return try e.dictionaryOptional(keyPath)
}

/// - Throws: DecodeError
public func <|-|? <T: Decodable, U where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> (T -> U?) throws -> [String: U]? {
    return { converter in
        return try e.dictionaryOptional(keyPath, converter: converter)
    }
}

/// - Throws: DecodeError
public func <^> <T: Decodable, U where T.DecodedType == T>(value: (T throws -> U) throws -> U, converter: T throws -> U) throws -> U {
    return try value(converter)
}

/// - Throws: DecodeError
public func <^> <T: Decodable, U where T.DecodedType == T>(valueOptional: (T -> U?) throws -> U?, converter: T -> U?) throws -> U? {
    return try valueOptional(converter)
}

/// - Throws: DecodeError
public func <^> <T: Decodable, U where T.DecodedType == T>(array: (T throws -> U) throws -> [U], converter: T throws -> U) throws -> [U] {
    return try array(converter)
}

/// - Throws: DecodeError
public func <^> <T: Decodable, U where T.DecodedType == T>(arrayOptional: (T -> U?) throws -> [U]?, converter: T -> U?) throws -> [U]? {
    return try arrayOptional(converter)
}

/// - Throws: DecodeError
public func <^> <T: Decodable, U where T.DecodedType == T>(dictionary: (T throws -> U) throws -> [String: U], converter: T throws -> U) throws -> [String: U] {
    return try dictionary(converter)
}

/// - Throws: DecodeError
public func <^> <T: Decodable, U where T.DecodedType == T>(dictionaryOptional: (T -> U?) throws -> [String: U]?, converter: T -> U?) throws -> [String: U]? {
    return try dictionaryOptional(converter)
}