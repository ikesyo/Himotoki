//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    typealias DecodedType = Self
    static func decode(e: Extractor) -> DecodedType?
}

extension String: Decodable {
    public static func decode(e: Extractor) -> String? {
        return e.rawValue as? String
    }
}

extension Int: Decodable {
    public static func decode(e: Extractor) -> Int? {
        return e.rawValue as? Int
    }
}

extension UInt: Decodable {
    public static func decode(e: Extractor) -> UInt? {
        return NSNumber.decode(e)?.unsignedLongValue
    }
}

extension Int8: Decodable {
    public static func decode(e: Extractor) -> Int8? {
        return NSNumber.decode(e)?.charValue
    }
}

extension UInt8: Decodable {
    public static func decode(e: Extractor) -> UInt8? {
        return NSNumber.decode(e)?.unsignedCharValue
    }
}

extension Int16: Decodable {
    public static func decode(e: Extractor) -> Int16? {
        return NSNumber.decode(e)?.shortValue
    }
}

extension UInt16: Decodable {
    public static func decode(e: Extractor) -> UInt16? {
        return NSNumber.decode(e)?.unsignedShortValue
    }
}

extension Int32: Decodable {
    public static func decode(e: Extractor) -> Int32? {
        return NSNumber.decode(e)?.intValue
    }
}

extension UInt32: Decodable {
    public static func decode(e: Extractor) -> UInt32? {
        return NSNumber.decode(e)?.unsignedIntValue
    }
}

extension Int64: Decodable {
    public static func decode(e: Extractor) -> Int64? {
        return NSNumber.decode(e)?.longLongValue
    }
}

extension UInt64: Decodable {
    public static func decode(e: Extractor) -> UInt64? {
        return NSNumber.decode(e)?.unsignedLongLongValue
    }
}

extension Double: Decodable {
    public static func decode(e: Extractor) -> Double? {
        return e.rawValue as? Double
    }
}

extension Float: Decodable {
    public static func decode(e: Extractor) -> Float? {
        return e.rawValue as? Float
    }
}

extension Bool: Decodable {
    public static func decode(e: Extractor) -> Bool? {
        return e.rawValue as? Bool
    }
}

extension NSNumber: Decodable {
    public static func decode(e: Extractor) -> NSNumber? {
        return e.rawValue as? NSNumber
    }
}
