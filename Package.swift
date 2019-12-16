// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ReusableView",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10)
    ],
    products: [
        .library(name: "ReusableView", targets: ["ReusableView"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(name: "ReusableView", dependencies: ["RxSwift", "RxCocoa"], path: "Sources")
    ]
)
