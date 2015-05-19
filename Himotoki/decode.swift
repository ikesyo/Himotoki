//
//  decode.swift
//  Himotoki
//
//  Created by Syo Ikeda on 5/19/15.
//  Copyright (c) 2015 Syo Ikeda. All rights reserved.
//

public func decode<T: Decodable where T.DecodedType == T>(object: AnyObject) -> T? {
    let extractor = Extractor(object)
    return T.decode(extractor)
}
