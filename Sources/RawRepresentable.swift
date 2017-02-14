//
//  RawRepresentable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 9/27/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

public extension RawRepresentable where Self: ValueType, RawValue: ValueType {
    static func decodeValue(_ JSON: Any) throws -> Self {
        let rawValue = try RawValue.decodeValue(JSON)

        guard let value = self.init(rawValue: rawValue) else {
            throw typeMismatch("rawValue for \(self)", actual: rawValue)
        }

        return value
    }
}
