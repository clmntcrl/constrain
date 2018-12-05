// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Constrain",
    products: [
        .library(name: "Constrain", targets: ["Constrain"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Constrain", dependencies: []),
        .testTarget(name: "ConstrainTests", dependencies: ["Constrain"]),
    ]
)
