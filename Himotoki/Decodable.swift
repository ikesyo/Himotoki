//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    init?(_ JSON: Extractor)
}

public func decode<T: Decodable>(object: AnyObject) -> T? {
    if let dictionary = object as? [String: AnyObject] {
        let extractor = Extractor(dictionary: dictionary)
        return T(extractor)
    } else {
        return nil
    }
}
