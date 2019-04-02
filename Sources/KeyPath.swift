//
//  KeyPath.swift
//  Himotoki
//
//  Created by Syo Ikeda on 6/5/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public struct KeyPath: Hashable {
    public let components: [String]

    public init(_ key: String) {
        self.init([key])
    }

    public init(_ components: [String]) {
        self.components = components
    }

    public static let empty: KeyPath = KeyPath([])
}

extension KeyPath {
    public static func + (lhs: KeyPath, rhs: KeyPath) -> KeyPath {
        return KeyPath(lhs.components + rhs.components)
    }
}

extension KeyPath: CustomDebugStringConvertible {
    public var debugDescription: String {
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
