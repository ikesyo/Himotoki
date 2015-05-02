//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    init?(_ e: Extractor)
}

public func decode<T: Decodable>(object: AnyObject) -> T? {
    let extractor = Extractor(JSON: object)
    return T.init(extractor)
}

extension String: Decodable {
    public init?(_ e: Extractor) {
        if let value = e.JSON as? String {
            self = value
        } else {
            return nil
        }
    }
}

extension Int: Decodable {
    public init?(_ e: Extractor) {
        if let value = e.JSON as? Int {
            self = value
        } else {
            return nil
        }
    }
}

extension Int64: Decodable {
    public init?(_ e: Extractor) {
        if let value = e.JSON as? NSNumber {
            self = value.longLongValue
        } else {
            return nil
        }
    }
}

extension Double: Decodable {
    public init?(_ e: Extractor) {
        if let value = e.JSON as? Double {
            self = value
        } else {
            return nil
        }
    }
}

extension Float: Decodable {
    public init?(_ e: Extractor) {
        if let value = e.JSON as? Float {
            self = value
        } else {
            return nil
        }
    }
}

extension Bool: Decodable {
    public init?(_ e: Extractor) {
        if let value = e.JSON as? Bool {
            self = value
        } else {
            return nil
        }
    }
}
