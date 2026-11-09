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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-BIGO/releases/download/6.2.0/AMRAdapterBigo.xcframework.zip",
            checksum: "bded02ab349a21059688fa4ceede698544959ad0914bc88d0445c869e2de8bb2"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-BIGO/releases/download/6.2.0/BigoADS.xcframework.zip",
            checksum: "657fcc2f9c32b59eeedd51461df108a4e8e71adf5cc8ec08335e6ac8b614e275"
        )
    ]
)
