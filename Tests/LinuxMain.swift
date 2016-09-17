//
//  LinuxMain.swift
//  Himotoki
//
//  Created by Syo Ikeda on 2016/03/04.
//  Copyright (c) 2016 Syo Ikeda. All rights reserved.
//

import XCTest
@testable import HimotokiTests

XCTMain([
    testCase(DecodableTest.allTests),
    testCase(DecodeErrorTest.allTests),
    testCase(DecodeWithRootKeyPathTest.allTests),
    testCase(KeyPathTest.allTests),
    testCase(NestedObjectParsingTest.allTests),
    testCase(RawRepresentableTest.allTests),
    testCase(TransformerTest.allTests),
])
