// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MatrixSDKCrypto",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macCatalyst(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(name: "MatrixSDKCrypto", targets: ["MatrixSDKCryptoFFI"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MatrixSDKCryptoFFI",
            url: "https://github.com/matrix-org/matrix-rust-sdk/releases/download/matrix-sdk-crypto-ffi-0.1.5/MatrixSDKCryptoFFI.zip",
            checksum: "1c662db291ea422ca3c8079ddb790df293f3caa839ede6b03b895f999347f358"
        )
    ]
)
