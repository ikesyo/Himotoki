//
//  DecodeError.swift
//  Himotoki
//
//  Created by Syo Ikeda on 8/29/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

public enum DecodeError: Error, Hashable {
    case missingKeyPath(KeyPath)
    case typeMismatch(expected: String, actual: String, keyPath: KeyPath)
    case custom(String)
}

extension DecodeError: CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case let .missingKeyPath(keyPath):
            return "DecodeError.missingKeyPath(\(keyPath))"

        case let .typeMismatch(expected, actual, keyPath):
            return "DecodeError.typeMismatch(expected: \(expected), actual: \(actual), keyPath: \(keyPath))"

        case let .custom(message):
            return "DecodeError.custom(\(message))"
        }
    }
}

public func missingKeyPath(_ keyPath: KeyPath) -> DecodeError {
    return DecodeError.missingKeyPath(keyPath)
}

public func typeMismatch<T>(_ expected: String, actual: T, keyPath: KeyPath = KeyPath.empty) -> DecodeError {
    return DecodeError.typeMismatch(expected: expected, actual: String(describing: actual), keyPath: keyPath)
}

public func customError(_ message: String) -> DecodeError {
    return DecodeError.custom(message)
}
