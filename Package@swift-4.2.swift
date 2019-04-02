// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Himotoki",
    products: [
        .library(name: "Himotoki", targets: ["Himotoki"]),
    ],
    targets: [
        .target(name: "Himotoki", dependencies: [], path: "Sources"),
        .testTarget(name: "HimotokiTests", dependencies: ["Himotoki"]),
    ],
    swiftLanguageVersions: [.v4_2]
)
