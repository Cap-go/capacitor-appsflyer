// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapgoCapacitorAppsflyer",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "CapgoCapacitorAppsflyer",
            targets: ["AppsFlyerPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0"),
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework-Static.git", from: "6.17.0")
    ],
    targets: [
        .target(
            name: "AppsFlyerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "AppsFlyerLib-Static", package: "AppsFlyerFramework-Static")
            ],
            path: "ios/Sources/AppsFlyerPlugin"),
        .testTarget(
            name: "AppsFlyerPluginTests",
            dependencies: ["AppsFlyerPlugin"],
            path: "ios/Tests/AppsFlyerPluginTests")
    ]
)
