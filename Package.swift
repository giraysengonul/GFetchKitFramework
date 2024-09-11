// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GFetchKitFramework",
    platforms: [
        .macOS(.v14), .iOS(.v16)
    ],
    products: [
        .library(
            name: "GFetchKitFramework",
            targets: ["GFetchKitFramework"]),
    ],
    dependencies: [
        
    ],
    targets: [
        
        .binaryTarget(
            name: "GFetchKitFramework",
            path: "./Sources/GFetchKitFramework.xcframework"),
        
       
    ]
)
