//
//  Extractor.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public final class Extractor {
    public let JSON: AnyObject

    /// Counter for failing cases of deserializing values
    private var failedCount: Int = 0

    /// Returns whether the receiver is success or failure.
    private var isValid: Bool {
        return failedCount == 0
    }

    internal init(JSON: AnyObject) {
        self.JSON = JSON
    }

    public func value<T: Decodable where T.DecodedType == T>(key: String) -> T? {
        if let dictionary = JSON as? [String: AnyObject] {
            return valueFor(key.componentsSeparatedByString("."), dictionary).flatMap(decode)
        } else {
            return nil
        }
    }

    public func valueOr<T: Decodable where T.DecodedType == T>(key: String, @autoclosure defaultValue: () -> T) -> T {
        return value(key) ?? defaultValue()
    }

    /// Returns current JSON value of type `T` if it is existing, or returns a
    /// unusable proxy value for `T` and collects failed count.
    public func valueOrFail<T: Decodable where T.DecodedType == T>(key: String) -> T {
        if let value: T = value(key) {
            return value
        } else {
            // Collects failed count
            failedCount++

            // Returns dummy memory as a proxy for type `T`
            let pointer = UnsafeMutablePointer<T>.alloc(sizeof(T))
            let dummy = pointer.memory
            pointer.destroy()
            return dummy
        }
    }

    public func decodeWith<T: Decodable where T.DecodedType == T>(@noescape decode: Extractor -> T) -> T? {
        let result = decode(self)
        if isValid {
            return result
        } else {
            return nil
        }
    }
}

// Implement it as a tail recursive function.
private func valueFor(keyPathComponents: [String], dictionary: [String: AnyObject]) -> AnyObject? {
    if keyPathComponents.isEmpty {
        return nil
    }

    if let object: AnyObject = dictionary[keyPathComponents.first!] {
        switch object {
        case is NSNull:
            return nil

        case let dict as [String: AnyObject] where keyPathComponents.count > 1:
            let tail = Array(keyPathComponents[1..<keyPathComponents.count])
            return valueFor(tail, dict)
            
        default:
            return object
        }
    }
    
    return nil
}
