//
//  DecodeError.swift
//  Himotoki
//
//  Created by Syo Ikeda on 8/29/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

public enum DecodeError: ErrorType {
    case MissingKeyPath(KeyPath)
    case TypeMismatch(expected: String, actual: String, keyPath: KeyPath?)
}

public func typeMismatch<T>(expected: String, actual: T, keyPath: KeyPath?) -> DecodeError {
    return DecodeError.TypeMismatch(expected: expected, actual: String(actual), keyPath: keyPath)
}
