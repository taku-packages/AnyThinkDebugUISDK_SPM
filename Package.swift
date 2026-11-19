// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkDebugUISDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkDebugUISDK",
            targets: ["AnyThinkDebugUISDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDebuggerUISDK",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.1/AnyThinkDebuggerUISDK.zip",
            checksum: "0ed05a313ee2b6dd153c431762421995ba5aae9f5f5faf785390ec09ac5081c8"
        ),
        .target(
            name: "AnyThinkDebugUISDKTarget",
            dependencies: [
                "AnyThinkDebuggerUISDK",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM")
            ],
            path: "Sources/AnyThinkDebugUISDKTarget"
        )
    ]
)