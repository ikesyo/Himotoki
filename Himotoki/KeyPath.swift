//
//  KeyPath.swift
//  Himotoki
//
//  Created by Syo Ikeda on 6/5/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public struct KeyPath {
    public let components: [String]
}

extension KeyPath: StringLiteralConvertible {
    public typealias UnicodeScalarLiteralType = StringLiteralType
    public typealias ExtendedGraphemeClusterLiteralType = StringLiteralType

    public init(unicodeScalarLiteral value: UnicodeScalarLiteralType) {
        components = [value]
    }

    public init(extendedGraphemeClusterLiteral value: ExtendedGraphemeClusterLiteralType) {
        components = [value]
    }

    public init(stringLiteral value: StringLiteralType) {
        components = [value]
    }
}

extension KeyPath: ArrayLiteralConvertible {
    public typealias Element = String

    public init(arrayLiteral elements: String...) {
        components = elements
    }
}
