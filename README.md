# Himotoki

[![Join the chat at https://gitter.im/ikesyo/Himotoki](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ikesyo/Himotoki?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![GitHub release](https://img.shields.io/github/release/ikesyo/Himotoki.svg)](https://github.com/ikesyo/Himotoki/releases)
[![CI Status](https://travis-ci.org/ikesyo/Himotoki.svg)](https://travis-ci.org/ikesyo/Himotoki)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

Himotoki (紐解き) is a type-safe JSON decoding library written purely in Swift. This library is highly inspired by the popular Swift JSON parsing libraries: [Argo](https://github.com/thoughtbot/Argo) and [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper).

_Himotoki_ has the same meaning of 'decoding' in Japanese.

- Just do JSON decoding (deserialization) well. JSON encoding (serialization) will not be supported going forward. :wink:
- Much simpler API.
- Fail-fast conditional model building. This is useful for some `struct`s with non-optional `let` properties.
- No external dependencies.

Let's take a look at a simple example:

```swift
struct Group: Himotoki.Decodable {
    let name: String
    let floor: Int
    let locationName: String
    let optional: [String]?

    // MARK: Himotoki.Decodable

    static func decode(_ e: Extractor) throws -> Group {
        return try Group(
            name: e <| "name",
            floor: e <| "floor",
            locationName: e <| [ "location", "name" ], // Parse nested objects
            optional: e <||? "optional" // Parse optional arrays of values
        )
    }
}

func testGroup() {
    var JSON: [String: AnyObject] = [ "name": "Himotoki", "floor": 12 ]
    
    let g = try? Group.decodeValue(JSON)
    XCTAssert(g != nil)
    XCTAssert(g?.name == "Himotoki")
    XCTAssert(g?.floor == 12)
    XCTAssert(g?.optional == nil)

    JSON["name"] = nil
    do {
        try Group.decodeValue(JSON)
    } catch let DecodeError.MissingKeyPath(keyPath) {
        XCTAssert(keyPath == "name")
    } catch {
        XCTFail()
    }
}
```

:warning: __Please note that you should need to add the module name `Himotoki` to `Decodable` (`Himotoki.Decodable`) to avoid type name collision with `Foundation.Decodable` in Xcode 9 or later.__ :warning:

## Implementing the `decode` method for your models

To implement the `decode` method for you models conforming to the `Decodable` protocol, you can use the following `Extractor`'s extraction methods:

- `public func value<T: Decodable>(_ keyPath: KeyPath) throws -> T`
- `public func valueOptional<T: Decodable>(_ keyPath: KeyPath) throws -> T?`
- `public func array<T: Decodable>(_ keyPath: KeyPath) throws -> [T]`
- `public func arrayOptional<T: Decodable>(_ keyPath: KeyPath) throws -> [T]?`
- `public func dictionary<T: Decodable>(_ keyPath: KeyPath) throws -> [String: T]`
- `public func dictionaryOptional<T: Decodable>(_ keyPath: KeyPath) throws -> [String: T]?`

### Extraction Operators

Himotoki also supports the following operators to decode JSON elements, where `T` is a generic type conforming to the `Decodable` protocol.

| Operator  | Decode element as | Remarks                          |
|:----------|:------------------|:---------------------------------|
| `<\|`     | `T`               | A value                          |
| `<\|?`    | `T?`              | An optional value                |
| `<\|\|`   | `[T]`             | An array of values               |
| `<\|\|?`  | `[T]?`            | An optional array of values      |
| `<\|-\|`  | `[String: T]`     | A dictionary of values           |
| `<\|-\|?` | `[String: T]?`    | An optional dictionary of values |

## Value Transformation

You can transform an extracted value to an instance of non-`Decodable` types by passing the value to a `Transformer` instance as follows:

```swift
// Creates a `Transformer` instance.
let URLTransformer = Transformer<String, NSURL> { URLString throws -> NSURL in
    if let URL = NSURL(string: URLString) {
        return URL
    }
    
    throw customError("Invalid URL string: \(URLString)")
}

let URL = try URLTransformer.apply(e <| "foo_url")
let otherURLs = try URLTransformer.apply(e <|| "bar_urls")
```

## Requirements

Himotoki 3.x requires / supports the following environments:

- Swift 3.1 / Xcode 8.3 or later
    - If you use Swift 2.2 (Xcode 7.3) or Swift 2.3 (Xcode 8), you can use [2.1.1](https://github.com/ikesyo/Himotoki/releases/tag/2.1.1) instead.
- OS X 10.9 or later
- iOS 8.0 or later
- tvOS 9.0 or later
- watchOS 2.0 or later
- [Linux](https://swift.org/download/#linux) is also supported

## Installation

Currently Himotoki supports installation via the package managers [Carthage](https://github.com/Carthage/Carthage) and [CocoaPods](https://cocoapods.org/).

### Carthage

Himotoki is [Carthage](https://github.com/Carthage/Carthage) compatible.

- Add `github "ikesyo/Himotoki" ~> 3.1` to your Cartfile.
- Run `carthage update`.

### CocoaPods

Himotoki also can be used by [CocoaPods](https://cocoapods.org/).

- Add the followings to your Podfile:

    ```ruby
    use_frameworks!
    pod "Himotoki", "~> 3.1"
    ```

- Run `pod install`.

## License

Himotoki is released under the [MIT License](LICENSE.md).
