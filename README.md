# Himotoki

[![Join the chat at https://gitter.im/ikesyo/Himotoki](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ikesyo/Himotoki?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![GitHub release](https://img.shields.io/github/release/ikesyo/Himotoki.svg)](https://github.com/ikesyo/Himotoki/releases)
[![CI Status](https://travis-ci.org/ikesyo/Himotoki.svg)](https://travis-ci.org/ikesyo/Himotoki)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Himotoki (紐解き) is a type-safe JSON decoding library purely written in Swift. This library is highly inspired by popular JSON parsing libraries in Swift: [Argo](https://github.com/thoughtbot/Argo) and [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper).

_Himotoki_ has the same meaning of 'decoding' in Japanese.

- Just do JSON decoding (deserialization) well. JSON encoding (serialization) would not be supported going forward. :wink:
- Much simpler API.
- Fail-fast conditional model building. This is useful for some `struct`s with non-optional `let` properties.
- No external dependencies.

See a simple example from a test code:

```swift
struct Group: Decodable {
    let name: String
    let floor: Int
    let locationName: String
    let optional: [String]?

    // MARK: Decodable

    static func decode(e: Extractor) throws -> Group {
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
    
    let g: Group? = try? decode(JSON)
    XCTAssert(g != nil)
    XCTAssert(g?.name == "Himotoki")
    XCTAssert(g?.floor == 12)
    XCTAssert(g?.optional == nil)

    JSON["name"] = nil
    do {
        try decode(JSON) as Group
    } catch let DecodeError.MissingKeyPath(keyPath) {
        XCTAssert(keyPath == "name")
    } catch {
        XCTFail()
    }
}
```

## Operators

Himotoki supports the following operators to decode JSON elements, where `T` is a generic type conforming to `Decodable` protocol.

| Operator                        | Decode element as | Remarks                          |
|:--------------------------------|:------------------|:---------------------------------|
| <code>&lt;&#124;</code>         | `T`               | A value                          |
| <code>&lt;&#124;?</code>        | `T?`              | An optional value                |
| <code>&lt;&#124;&#124;</code>   | `[T]`             | An array of values               |
| <code>&lt;&#124;&#124;?</code>  | `[T]?`            | An optional array of values      |
| <code>&lt;&#124;-&#124;</code>  | `[String: T]`     | A dictionary of values           |
| <code>&lt;&#124;-&#124;?</code> | `[String: T]?`    | An optional dictionary of values |

## Requirements

- Swift 2.1 / Xcode 7.1
- OS X 10.9 or later
- iOS 8.0 or later (by Carthage or CocoaPods) / iOS 7 (by copying the source files directly)
- tvOS 9.0
- watchOS 2.0

## Installation

There are 3 options. If your app support iOS 7, you can only use the last way.

### Framework with Carthage (preferable)

Himotoki is [Carthage](https://github.com/Carthage/Carthage) compatible.

- Add `github "ikesyo/Himotoki" ~> 1.3` to your Cartfile.
- Run `carthage update`.

### Framework with CocoaPods

Himotoki also can be used by [CocoaPods](https://cocoapods.org/).

- Add the followings to your Podfile:

    ```ruby
    use_frameworks!
    pod "Himotoki", "~> 1.3"
    ```

- Run `pod install`.

### Copying the source files directly

- Add this repository as a git submodule:

    ```swift
    $ git submodule add https://github.com/ikesyo/Himotoki.git PATH_TO_SUBMODULE
    
    // or
    
    $ carthage update --use-submodules
    ```

- Then just add references of `Himotoki/*.swift` to your Xcode project.

## License

Himotoki is released under the [MIT License](LICENSE.md).
