// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageName = "Main"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(name: packageName, targets: [packageName]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzysztofzablocki/Inject.git", from: "1.4.0"),
    ],
    targets: [
        .target(
            name: packageName,
            dependencies: [
                .byNameItem(
                    name: "Inject",
                    condition: .when(platforms: [
                        .iOS,
                    ])
                ),
            ],
            path: "Sources",
            resources: [
                .process("Assets/profile.jpg"),
                .process("Assets/nature.jpg"),
            ]
        ),
    ]
)
