//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public final class Extractor {
    public let rawValue: AnyObject

    internal init(_ rawValue: AnyObject) {
        self.rawValue = rawValue
    }

    private func rawValue(key: String) -> AnyObject? {
        if let dictionary = rawValue as? [String: AnyObject] {
            return valueFor(key.componentsSeparatedByString("."), dictionary)
        } else {
            return nil
        }
    }

    internal func value<T: Decodable where T.DecodedType == T>(key: String) -> T? {
        if let dictionary = rawValue as? [String: AnyObject] {
            return valueFor(key.componentsSeparatedByString("."), dictionary).flatMap(decode)
        } else {
            return nil
        }
    }

    internal func array<T: Decodable where T.DecodedType == T>(key: String) -> [T]? {
        let innerValue: AnyObject? = rawValue(key)

        if let array = innerValue as? [AnyObject] {
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

    internal func dictionary<T: Decodable where T.DecodedType == T>(key: String) -> [String: T]? {
        let innerValue: AnyObject? = rawValue(key)

        if let dictionary = innerValue as? [String: AnyObject] {
            return reduce(dictionary, [:]) { (var accum, element) in
                let (key, value: AnyObject) = element
                accum?[key] = decode(value)
                return accum
            }
        } else {
            return nil
        }
    }
}

// Implement it as a tail recursive function.
private func valueFor(keyPathComponents: [String], dictionary: [String: AnyObject]) -> AnyObject? {
    if keyPathComponents.isEmpty {
        return nil
    }

    if let object: AnyObject = dictionary[keyPathComponents.first!] {
        switch object {
        case is NSNull:
            return nil

        case let dict as [String: AnyObject] where keyPathComponents.count > 1:
            let tail = Array(keyPathComponents[1..<keyPathComponents.count])
            return valueFor(tail, dict)
            
        default:
            return object
        }
    }
    
    return nil
}
