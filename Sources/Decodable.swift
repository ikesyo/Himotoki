//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    /// - Throws: DecodeError or an arbitrary ErrorType
    static func decode(e: Extractor) throws -> Self
}

// MARK: - Extensions

extension Decodable {
    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decodeValue(JSON: AnyJSON) throws -> Self {
        let extractor = Extractor(JSON)
        return try self.decode(extractor)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public static func decodeValue(JSON: AnyJSON, rootKeyPath: KeyPath) throws -> Self {
        return try Extractor(JSON).value(rootKeyPath)
    }
}
