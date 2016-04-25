//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    associatedtype DecodedType = Self

    /// - Throws: DecodeError or an arbitrary ErrorType
    static func decode(e: Extractor) throws -> DecodedType
}

// MARK: - Extensions

extension Decodable where DecodedType == Self {
    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decodeValue(JSON: AnyJSON) throws -> DecodedType {
        let extractor = Extractor(JSON)
        return try self.decode(extractor)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decodeValue(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> DecodedType {
        return try Extractor(JSON).value(rootKeyPath)
    }
}
