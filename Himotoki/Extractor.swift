//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public final class Extractor {
    private let dictionary: [String: AnyObject]

    /// Counter for failing cases of deserializing values
    private var failedCount: Int = 0

    internal init(dictionary: [String: AnyObject]) {
        self.dictionary = dictionary
    }

    public func value<T>(key: String) -> T? {
        return dictionary[key] as? T
    }

    public func valueOr<T>(key: String, @autoclosure defaultValue: () -> T) -> T {
        return value(key) ?? defaultValue()
    }

    /// Returns current JSON value of type `T` if it is existing, or returns a
    /// unusable proxy value for `T` and collects failed count.
    public func valueOrFail<T>(key: String) -> T {
        if let value: T = value(key) {
            return value
        } else {
            // Collects failed count
            failedCount++

            // Returns dummy memory as a proxy for type `T`
            let pointer = UnsafeMutablePointer<T>.alloc(0)
            pointer.dealloc(0)
            return pointer.memory
        }
    }

    /// Returns whether the receiver is success or failure.
    public var isValid: Bool {
        return failedCount == 0
    }
}
