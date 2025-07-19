// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NCStarRating",
    platforms: [
        .iOS(.v17), .macOS(.v14)
    ],
    products: [
        .library(name: "NCStarRating", targets: ["NCStarRating"]),
        .library(name: "NCCoreModels", targets: ["NCCoreModels"]),
        .library(name: "MySDK2", targets: ["NCCoreModels", "NCNetwork"])
    ],
    targets: [
        .target(name: "NCStarRating"),
        .target(name: "NCCoreModels", dependencies: []),
        .target(name: "NCNetwork", dependencies: ["NCCoreModels"])

    ]
)
