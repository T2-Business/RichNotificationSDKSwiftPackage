// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RiCHNotificationService",
    products: [
        .library(
            name: "RiCHNotificationService",
            targets: ["RiCHNotificationService"])
    ],
    dependencies: [
        ],
    targets: [
        .binaryTarget(
            name: "RiCHNotificationService",
            path: "RiCHNotificationService.xcframework")
    ])
