// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "RxStarscream",
    platforms: [
        .iOS(.v12), // Minimum iOS version
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "RxStarscream",
            targets: ["RxStarscream"]
        )
    ],
    dependencies: [
        // Add RxSwift and Starscream dependencies
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "4.5.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "3.1.1")
    ],
    targets: [
        .target(
            name: "RxStarscream",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "Starscream", package: "Starscream")
            ],
            path: "Sources/RxStarscream"
        ),
        .testTarget(
            name: "RxStarscreamTests",
            dependencies: ["RxStarscream"],
            path: "Tests/RxStarscreamTests"
        )
    ]
)
