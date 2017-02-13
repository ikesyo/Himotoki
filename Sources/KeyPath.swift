//
//  KeyPath.swift
//  Himotoki
//
//  Created by Syo Ikeda on 6/5/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public struct KeyPath {
    internal enum Storage: Hashable {
        case empty
        case single(String)
        case array([String])

        internal static func == (lhs: Storage, rhs: Storage) -> Bool {
            switch (lhs, rhs) {
            case (.empty, .empty):
                return true
            case let (.single(left), .single(right)):
                return left == right
            case let (.array(left), .array(right)):
                return left == right
            default:
                return false
            }
        }

        internal var hashValue: Int {
            switch self {
            case .empty:
                return 0
            case let .single(v):
                return v.hashValue
            case let .array(v):
                return v.reduce(0) { $0 ^ $1.hashValue }
            }
        }
    }

    internal let storage: Storage

    public var components: [String] {
        switch storage {
        case .empty:
            return []
        case let .single(v):
            return [v]
        case let .array(v):
            return v
        }
    }

    public init(_ key: String) {
        self.storage = .single(key)
    }

    public init(_ components: [String]) {
        let storage: Storage
        switch components.count {
        case 0: storage = .empty
        case 1: storage = .single(components[0])
        default: storage = .array(components)
        }
        self.init(storage)
    }

    internal init(_ storage: Storage) {
        self.storage = storage
    }

    public static var empty: KeyPath {
        return KeyPath(.empty)
    }
}

public func + (lhs: KeyPath, rhs: KeyPath) -> KeyPath {
    return KeyPath(lhs.components + rhs.components)
}

extension KeyPath: Hashable {
    public static func == (lhs: KeyPath, rhs: KeyPath) -> Bool {
        return lhs.storage == rhs.storage
    }

    public var hashValue: Int {
        return storage.hashValue
    }
}

extension KeyPath: CustomStringConvertible {
    public var description: String {
        return "KeyPath(\(components))"
    }
}

extension KeyPath: ExpressibleByStringLiteral {
    public init(unicodeScalarLiteral value: String) {
        self.init(value)
    }

    public init(extendedGraphemeClusterLiteral value: String) {
        self.init(value)
    }

    public init(stringLiteral value: String) {
        self.init(value)
    }
}

extension KeyPath: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self.init(elements)
    }
}

extension KeyPath: ExpressibleByNilLiteral {
    @available(*, deprecated, renamed: "KeyPath.empty")
    public init(nilLiteral: ()) {
        self.init([])
    }
}
