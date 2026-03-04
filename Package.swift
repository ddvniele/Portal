// swift-tools-version:6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Portal",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "PortalTransitions",
            targets: ["PortalTransitions"]),
        .library(
            name: "PortalHeaders",
            targets: ["PortalHeaders"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Aeastr/Chronicle.git", from: "3.0.1")
    ],
    targets: [
        .target(
            name: "PortalTransitions",
            dependencies: [
                .product(name: "Chronicle", package: "Chronicle"),
                .product(name: "ChronicleConsole", package: "Chronicle")
            ],
            path: "Sources/PortalTransitions"
        ),
        .target(
            name: "PortalHeaders",
            dependencies: [
                .product(name: "Chronicle", package: "Chronicle"),
                .product(name: "ChronicleConsole", package: "Chronicle")
            ],
            path: "Sources/PortalHeaders"
        ),
        .testTarget(
            name: "PortalHeadersTests",
            dependencies: ["PortalHeaders"],
            path: "Tests/PortalHeadersTests"
        ),
        .testTarget(
            name: "PortalTransitionsTests",
            dependencies: ["PortalTransitions"],
            path: "Tests/PortalTransitionsTests"
        ),
    ]
)
