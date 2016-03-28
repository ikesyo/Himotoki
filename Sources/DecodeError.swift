//
//  DecodeError.swift
//  Himotoki
//
//  Created by Syo Ikeda on 8/29/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

#if swift(>=3.0)
    public typealias HimotokiErrorType = ErrorProtocol
#else
    public typealias HimotokiErrorType = ErrorType
#endif

public enum DecodeError: HimotokiErrorType {
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

extension DecodeError: Hashable {
    public var hashValue: Int {
        switch self {
        case let .MissingKeyPath(keyPath):
            return keyPath.hashValue

        case let .TypeMismatch(expected, actual, keyPath):
            return expected.hashValue ^ actual.hashValue ^ (keyPath ?? KeyPath.empty).hashValue

        case let .Custom(message):
            return message.hashValue
        }
    }
}

public func == (lhs: DecodeError, rhs: DecodeError) -> Bool {
    switch (lhs, rhs) {
    case let (.MissingKeyPath(l), .MissingKeyPath(r)):
        return l == r

    case let (.TypeMismatch(la, lb, lc), .TypeMismatch(ra, rb, rc)):
        return la == ra && lb == rb && lc == rc

    case let (.Custom(l), .Custom(r)):
        return l == r

    default:
        return false
    }
}

public func missingKeyPath(keyPath: KeyPath) -> DecodeError {
    return DecodeError.MissingKeyPath(keyPath)
}

public func typeMismatch<T>(expected: String, actual: T, keyPath: KeyPath?) -> DecodeError {
    return DecodeError.TypeMismatch(expected: expected, actual: String(actual), keyPath: keyPath)
}

public func customError(message: String) -> DecodeError {
    return DecodeError.Custom(message)
}
