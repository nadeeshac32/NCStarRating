// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NCStarRating",
    platforms: [
        .iOS(.v17), .macOS(.v14)
    ],
    products: [
        .library(name: "NCStarRatings", targets: ["NCStarRating"]),
        .library(name: "MySDK1", targets: ["CoreModels"]),
        .library(name: "MySDK2", targets: ["CoreModels", "Network"])
    ],
    targets: [
        .target(name: "NCStarRating"),
        .target(name: "CoreModels", dependencies: []),
        .target(name: "Network", dependencies: ["CoreModels"])

    ]
)
