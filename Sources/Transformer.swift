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
    private let transform: From throws -> To

    public init(_ transform: From throws -> To) {
        self.transform = transform
    }
    
    public func apply(subject: From) throws -> To {
        return try transform(subject)
    }
}
