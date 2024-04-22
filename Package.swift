// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.3.13.4"
let url = "https://gitlab.futo.org/api/v4/projects/125/packages/generic/matrix-sdk-crypto-ffi-\(version)/\(version)/MatrixSDKCryptoFFI.zip"
let checksum = "009543741002add0b221c6316c98d70ce0206a6c53476feee7274c66f9d2fb72"

let package = Package(
    name: "MatrixSDKCrypto",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macCatalyst(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "MatrixSDKCrypto",
            targets: ["MatrixSDKCrypto"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MatrixSDKCryptoFFI",
            url: url,
            checksum: checksum
        ),
        /*
            Apparently we can't build our Swift package library directly from the FFI target.
            We need a sort of intermediate build target as a go-between.
            This technique comes from the Matrix Rust components package:
            https://github.com/matrix-org/matrix-rust-components-swift/blob/f4ff25f54c7e854fa1498f6dfd7bedca8c0ed260/Package.swift#L32
        */
        .target(
            name: "MatrixSDKCrypto",
            dependencies: [
                .target(name: "MatrixSDKCryptoFFI")
            ]
        )
    ]
)
