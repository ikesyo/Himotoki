//
//  Decodable.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/2/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public protocol Decodable {
    init?(_ e: Extractor)
}

public func decode<T: Decodable>(object: AnyObject) -> T? {
    let extractor = Extractor(JSON: object)
    return T.init(extractor)
}
