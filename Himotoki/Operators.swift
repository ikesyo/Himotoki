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

public func <| <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> Optional<T> {
    return e.value(key)
}

public func <|? <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> Optional<T?> {
    return Optional(e <| key)
}

public func <|| <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> Optional<[T]> {
    return e.array(key)
}

public func <||? <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> Optional<[T]?> {
    return Optional(e <|| key)
}

public func <|-| <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> Optional<[String: T]> {
    return e.dictionary(key)
}

public func <|-|? <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> Optional<[String: T]?> {
    return Optional(e <|-| key)
}
