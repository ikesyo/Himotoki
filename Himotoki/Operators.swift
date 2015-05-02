//
//  Operators.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

infix operator <| { associativity left precedence 150 }
infix operator <|? { associativity left precedence 150 }

public func <| <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> T {
    return e.valueOrFail(key)
}

public func <|? <T: Decodable where T.DecodedType == T>(e: Extractor, key: String) -> T? {
    return e.value(key)
}
