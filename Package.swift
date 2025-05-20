// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSwiftFamily",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RxSwiftFamily",
            targets: ["RxSwiftFamily"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/RxSwiftCommunity/NSObject-Rx.git", .upToNextMajor(from: "5.2.2")),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture.git", .upToNextMajor(from: "4.0.4")),
        .package(url: "https://github.com/RxSwiftCommunity/RxKeyboard.git", .upToNextMajor(from: "2.0.1")),
        .package(url: "https://github.com/RxSwiftCommunity/RxOptional", exact: "5.0.5"),
        .package(url: "https://github.com/RxSwiftCommunity/RxSwiftExt", .upToNextMajor(from: "6.2.1")),
        .package(url: "https://github.com/duanbhuLss/RxViewController.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "RxSwiftFamily",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "NSObject-Rx", package: "NSObject-Rx"),
                .product(name: "RxDataSources", package: "RxDataSources"),
                .product(name: "RxGesture", package: "RxGesture"),
                .product(name: "RxKeyboard", package: "RxKeyboard"),
                .product(name: "RxOptional", package: "RxOptional"),
                .product(name: "RxSwiftExt", package: "RxSwiftExt"),
                .product(name: "RxViewController", package: "RxViewController")
            ]),
        .testTarget(
            name: "RxSwiftFamilyTests",
            dependencies: ["RxSwiftFamily"]
        ),
    ]
)
