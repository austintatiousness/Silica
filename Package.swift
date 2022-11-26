// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Silica",
    products: [
        .library(name: "Silica2", targets: ["Silica2"])
    ],
    dependencies: [
        .package(url: "https://github.com/austintatiousness/Cairo.git", .branch("master"))
    ],
    targets: [
        .target(name: "Silica2", dependencies: ["Cairo"]),
        .testTarget(name: "SilicaTests", dependencies: ["Silica"])
    ]

)
