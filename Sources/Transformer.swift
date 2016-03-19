//
//  Transformer.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2/27/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

public struct Transformer<F, T>: TransformerType {
    public typealias From = F
    public typealias To = T
    private let transform: From -> To?

    public init(_ transform: From -> To?) {
        self.transform = transform
    }
    
    /// - Throws: DecodeError
    public func apply(subject: From) throws -> To {
        if let value = transform(subject) {
            return value
        }
        throw customError("Failed transforming \(subject)")
    }
}
