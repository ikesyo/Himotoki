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

public func <| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> Optional<T> {
    return e.value(keyPath)
}

public func <|? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> Optional<T?> {
    return e.valueOptional(keyPath)
}

public func <|| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> Optional<[T]> {
    return e.array(keyPath)
}

public func <||? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> Optional<[T]?> {
    return e.arrayOptional(keyPath)
}

public func <|-| <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> Optional<[String: T]> {
    return e.dictionary(keyPath)
}

public func <|-|? <T: Decodable where T.DecodedType == T>(e: Extractor, keyPath: KeyPath) -> Optional<[String: T]?> {
    return e.dictionaryOptional(keyPath)
}
