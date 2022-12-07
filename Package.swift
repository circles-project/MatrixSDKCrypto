// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MatrixSDKCrypto",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MatrixSDKCrypto",
            targets: ["MatrixSDKCryptoFFI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        //.binaryTarget(name: "MatrixSDKCryptoFFI", path: "./Sources/MatrixSDKCryptoFFI.xcframework"),
        .binaryTarget(
            name: "MatrixSDKCryptoFFI",
            url: "https://github.com/matrix-org/matrix-rust-sdk/releases/download/matrix-sdk-crypto-ffi-0.1.5/MatrixSDKCryptoFFI.zip",
            checksum: "1c662db291ea422ca3c8079ddb790df293f3caa839ede6b03b895f999347f358"
        )
    ]
)
