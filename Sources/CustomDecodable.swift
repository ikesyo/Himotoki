//
//  CustomDecodable.swift
//  Himotoki
//
//  Created by Tomohiro Kumagai on 4/26/16.
//  Copyright © 2016 Syo Ikeda. All rights reserved.
//

public protocol CustomDecodableType {
    
    associatedtype DecodedType
    
    static func decode(e: Extractor) throws -> DecodedType
}

public struct CustomDecodable<T:CustomDecodableType> : Decodable {
    
    private var _value: Any
    
    private init(_ value: T.DecodedType) {
        
        _value = value
    }
    
    public var value: T.DecodedType {
        
        return _value as! T.DecodedType
    }
    
    public static func decode(e: Extractor) throws -> CustomDecodable {
        
        return try CustomDecodable(T.decode(e))
    }
}

// MARK: - Extensions

extension CustomDecodable : CustomStringConvertible {
    
    public var description: String {
        
        return String(_value)
    }
}

extension CustomDecodable : CustomDebugStringConvertible {
    
    public var debugDescription: String {
        
        return String(reflecting: _value)
    }
}

extension CustomDecodable : CustomPlaygroundQuickLookable {
    
    public func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        
        return PlaygroundQuickLook(reflecting: _value)
    }
}
