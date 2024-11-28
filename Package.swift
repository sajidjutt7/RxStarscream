// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "RxStarscream",
    platforms: [
        .iOS(.v11) // Minimum iOS version
    ],
    products: [
        // This defines the library product for other projects to import
        .library(
            name: "RxStarscream",
            targets: ["RxStarscream"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // The main target for your source files
        .target(
            name: "RxStarscream",
            path: "Sources/RxStarscream" // Path to your source files
        ),
        // Test target (optional, but recommended)
        .testTarget(
            name: "RxStarscreamTests",
            dependencies: ["RxStarscream"],
            path: "Tests/RxStarscreamTests"
        )
    ]
)