//
//  TransformerType.swift
//  Himotoki
//
//  Created by Takeru Chuganji on 3/19/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

public protocol TransformerType {
    typealias From
    typealias To
    func apply(subject: From) throws -> To
}

public extension TransformerType {
    public func apply(subject: From?) throws -> To? {
        return try subject.map(apply)
    }
    
    public func apply(subject: [From]) throws -> [To] {
        return try subject.map(apply)
    }
    
    public func apply(subject: [From]?) throws -> [To]? {
        return try subject.map(apply)
    }
    
    public func apply(subject: [String: From]) throws -> [String: To] {
        var result = [String: To](minimumCapacity: subject.count)
        try subject.forEach { key, value in
            result[key] = try apply(value)
        }
        return result
    }
    
    public func apply(subject: [String: From]?) throws -> [String: To]? {
        return try subject.map(apply)
    }
}
