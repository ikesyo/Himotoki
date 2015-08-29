//
//  DecodingError.swift
//  Himotoki
//
//  Created by Syo Ikeda on 8/29/15.
//  Copyright © 2015 Syo Ikeda. All rights reserved.
//

public enum DecodingError: ErrorType {
    case MissingKeyPath(KeyPath)
    case TypeMismatch(String)
}
