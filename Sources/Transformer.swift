//
//  Transformer.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2/27/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

extension Extractor {
    
    /// - Throws: DecodeError
    public func value<From:Decodable, To where From.DecodedType == From>(keyPath: KeyPath, transform: (From) throws -> To) throws -> To {
        return try transform(value(keyPath))
    }
    
    /// - Throws: DecodeError
    public func valueOptional<From:Decodable, To where From.DecodedType == From>(keyPath: KeyPath, transform: (From) throws -> To) throws -> To? {
        return try valueOptional(keyPath).map(transform)
    }
    
    /// - Throws: DecodeError
    public func array<From:Decodable, To where From.DecodedType == From>(keyPath: KeyPath, transform: (From) throws -> To) throws -> [To] {
        return try _transform(transform)(subject: array(keyPath))
    }
    
    /// - Throws: DecodeError
    public func arrayOptional<From:Decodable, To where From.DecodedType == From>(keyPath: KeyPath, transform: (From) throws -> To) throws -> [To]? {
        return try arrayOptional(keyPath).map(_transform(transform))
    }
    
    /// - Throws: DecodeError
    public func dictionary<From:Decodable, To where From.DecodedType == From>(keyPath: KeyPath, transform: (From) throws -> To) throws -> [String: To] {
        return try _transform(transform)(subject: dictionary(keyPath))
    }
    
    /// - Throws: DecodeError
    public func dictionaryOptional<From:Decodable, To where From.DecodedType == From>(keyPath: KeyPath, transform: (From) throws -> To) throws -> [String: To]? {
        return try dictionaryOptional(keyPath).map(_transform(transform))
    }
    
    private func _transform<From, To>(transform: (From) throws -> To) -> (subject: [From]) throws -> [To] {
        
        return { try $0.map(transform) }
    }
    
    private func _transform<From, To>(transform: (From) throws -> To) -> (subject: [String: From]) throws -> [String: To] {
        
        return { subject in
            var result = [String: To](minimumCapacity: subject.count)
            try subject.forEach { key, value in
                result[key] = try transform(value)
            }
            return result
        }
    }
}

