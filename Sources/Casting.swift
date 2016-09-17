//
//  Casting.swift
//  Himotoki
//
//  Created by Syo Ikeda on 6/21/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

internal func castOrFail<T>(_ e: Extractor) throws -> T {
    return try castOrFail(e.rawValue)
}

public func castOrFail<T>(_ any: Any) throws -> T {
    guard let result = any as? T else {
        throw typeMismatch("\(T.self)", actual: any, keyPath: nil)
    }

    return result
}
