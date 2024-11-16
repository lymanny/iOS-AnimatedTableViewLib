// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnimatedTableView",
    platforms: [
        .iOS(.v13) // Set the minimum iOS version
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AnimatedTableView",
            targets: ["AnimatedTableView"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AnimatedTableView"),
        .testTarget(
            name: "AnimatedTableViewTests",
            dependencies: ["AnimatedTableView"]
        ),
    ]
)
