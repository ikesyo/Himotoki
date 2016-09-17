//
//  Transformer.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2/27/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

public struct Transformer<From, To> {
    private let transform: (From) throws -> To

    public init(_ transform: @escaping (From) throws -> To) {
        self.transform = transform
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func apply(_ subject: From) throws -> To {
        return try transform(subject)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func apply(_ subject: From?) throws -> To? {
        return try subject.map(apply)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func apply(_ subject: [From]) throws -> [To] {
        return try subject.map(transform)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func apply(_ subject: [From]?) throws -> [To]? {
        return try subject.map(apply)
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func apply(_ subject: [String: From]) throws -> [String: To] {
        var result = [String: To](minimumCapacity: subject.count)
        try subject.forEach { key, value in
            result[key] = try transform(value)
        }
        return result
    }

    /// - Throws: DecodeError or an arbitrary ErrorType
    public func apply(_ subject: [String: From]?) throws -> [String: To]? {
        return try subject.map(apply)
    }
}
