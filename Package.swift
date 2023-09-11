// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "RiCHNotificationService",
    platforms: [
        .iOS(.v11)
    ],
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
