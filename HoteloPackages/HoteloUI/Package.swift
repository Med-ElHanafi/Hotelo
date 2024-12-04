// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HoteloUI",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "HoteloUI",
            targets: ["HoteloUI"]),
    ],
    targets: [
        .target(
            name: "HoteloUI",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "HoteloUITests",
            dependencies: ["HoteloUI"]
        ),
    ]
)
