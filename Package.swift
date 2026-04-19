// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterBigo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterBigo",
            targets: ["AMRAdapterBigo"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.85")
    ],
    targets: [
        .target(
            name: "AMRAdapterBigo",
            dependencies: [
                "AMRAdapterBigoLib",
                "BigoADS",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterBigo",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterBigoLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-BIGO/releases/download/5.1.2/AMRAdapterBigo.xcframework.zip",
            checksum: "44b4d5ff85f38a7605963766ec04ff80fbe1796ef72f77f89f47e0554683e0ca"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-BIGO/releases/download/5.1.2/BigoADS.xcframework.zip",
            checksum: "9bf9d6c5da24e7fce17c3884a543f3fcba672f63061b930c49a0a2cfc4f6290a"
        )
    ]
)
