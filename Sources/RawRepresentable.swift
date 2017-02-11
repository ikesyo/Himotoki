//
//  RawRepresentable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 9/27/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

public extension RawRepresentable where Self: Decodable, RawValue: Decodable {
    static func decode(_ e: Extractor) throws -> Self {
        let rawValue = try RawValue.decode(e)

        guard let value = self.init(rawValue: rawValue) else {
            throw typeMismatch("rawValue for \(self)", actual: rawValue)
        }

        return value
    }
}
