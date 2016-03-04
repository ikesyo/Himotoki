//
//  LinuxMain.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2016/03/04.
//  Copyright (c) 2016 Syo Ikeda. All rights reserved.
//

import XCTest
@testable import Himotoki

XCTMain([
    DecodableTest(),
    DecodeErrorTest(),
    DecodeWithRootKeyPathTest(),
    NestedObjectParsingTest(),
    RawRepresentableTest(),
    TransformerTest(),
])
