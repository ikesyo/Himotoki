//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) -> T? {
    let extractor = Extractor(object)
    return T.decode(extractor)
}

public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) -> [T]? {
    if let array = object as? [AnyObject] {
        return array.reduce([]) { (var accum, value) in
            if let decoded: T = decode(value) {
                accum?.append(decoded)
            }
            return accum
        }
    } else {
        return nil
    }
}

public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) -> [String: T]? {
    if let dictionary = object as? [String: AnyObject] {
        return reduce(dictionary, [:]) { (var accum, element) in
            let (key, value: AnyObject) = element
            accum?[key] = decode(value)
            return accum
        }
    } else {
        return nil
    }
}
