// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Demo",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    dependencies: [
        .package(name: "BitcoinUI", path: "../")
    ],
    targets: [
        .executableTarget(
            name: "Demo",
            dependencies: [
                .product(name: "BitcoinUI", package: "BitcoinUI")
            ],
            path: "Sources"
        )
    ]
)
