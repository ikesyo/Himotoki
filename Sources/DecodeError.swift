//
//  DecodeError.swift
//  Himotoki
//
//  Created by Syo Ikeda on 8/29/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

public enum DecodeError: Error {
    case missingKeyPath(KeyPath)
    case typeMismatch(expected: String, actual: String, keyPath: KeyPath)
    case custom(String)
}

extension DecodeError: CustomStringConvertible {
    public var description: String {
        switch self {
        case let .missingKeyPath(keyPath):
            return "DecodeError.missingKeyPath(\(keyPath))"

        case let .typeMismatch(expected, actual, keyPath):
            return "DecodeError.typeMismatch(expected: \(expected), actual: \(actual), keyPath: \(keyPath.description))"

        case let .custom(message):
            return "DecodeError.custom(\(message))"
        }
    }
}

extension DecodeError: Hashable {
    public static func == (lhs: DecodeError, rhs: DecodeError) -> Bool {
        switch (lhs, rhs) {
        case let (.missingKeyPath(l), .missingKeyPath(r)):
            return l == r

        case let (.typeMismatch(la, lb, lc), .typeMismatch(ra, rb, rc)):
            return la == ra && lb == rb && lc == rc

        case let (.custom(l), .custom(r)):
            return l == r

        default:
            return false
        }
    }

    public var hashValue: Int {
        switch self {
        case let .missingKeyPath(keyPath):
            return keyPath.hashValue

        case let .typeMismatch(expected, actual, keyPath):
            return expected.hashValue ^ actual.hashValue ^ keyPath.hashValue

        case let .custom(message):
            return message.hashValue
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
