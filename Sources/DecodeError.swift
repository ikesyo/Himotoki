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
    case Custom(String)
}

extension DecodeError: CustomStringConvertible {
    public var description: String {
        switch self {
        case let .MissingKeyPath(keyPath):
            return "MissingKeyPath(\(keyPath))"

        case let .TypeMismatch(expected, actual, keyPath):
            return "TypeMismatch(expected: \(expected), actual: \(actual), keyPath: \(keyPath?.description ?? "nil"))"

        case let .Custom(message):
            return "Custom(\(message))"
        }
    }
}

public func typeMismatch<T>(expected: String, actual: T, keyPath: KeyPath?) -> DecodeError {
    return DecodeError.TypeMismatch(expected: expected, actual: String(actual), keyPath: keyPath)
}

public func customError(message: String) -> DecodeError {
    return DecodeError.Custom(message)
}
