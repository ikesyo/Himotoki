//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    typealias DecodedType = Self

    /// - Throws: DecodeError
    static func decode(e: Extractor) throws -> DecodedType
}

extension Decodable where DecodedType == Self {
    static func decode(object: AnyObject) throws -> DecodedType {
        let extractor = Extractor(object)
        return try decode(extractor)
    }

    static func decode(object: AnyObject, rootKeyPath: KeyPath) throws -> DecodedType {
        return try Extractor.decode(object) <| rootKeyPath
    }
}
