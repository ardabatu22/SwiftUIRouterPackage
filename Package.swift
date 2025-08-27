// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIRouterPackage",
    platforms: [
        .iOS(.v16) // NavigationStack iOS 16+
    ],
    products: [
        .library(
            name: "SwiftUIRouterPackage",
            targets: ["SwiftUIRouterPackage"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIRouterPackage",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftUIRouterPackageTests",
            dependencies: ["SwiftUIRouterPackage"]
        ),
    ]
)
