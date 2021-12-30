// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "KakaoSDKUser",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(name: "KakaoSDKUser", targets: ["KakaoSDKUser"])
    ],
    dependencies: [
        .package(name: "KakaoSDKAuth", url: "https://github.com/jaemyeong/KakaoSDKAuth-SPM.git", .upToNextMajor(from: "2.8.4"))
    ],
    targets: [
        .target(name: "KakaoSDKUser", dependencies: ["KakaoSDKAuth"])
    ]
)
