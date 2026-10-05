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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-BIGO/releases/download/6.1.0/AMRAdapterBigo.xcframework.zip",
            checksum: "93d056b1436b257ea805de4b6e243525e7a9764f330af6a0533868c74739ea8c"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-BIGO/releases/download/6.1.0/BigoADS.xcframework.zip",
            checksum: "8bd58821762023c8ca0f1b37bc9a8c683ddfa146324dc2fc2da8d2a077894ba8"
        )
    ]
)
