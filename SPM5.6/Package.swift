// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPM",
            targets: ["SPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
         .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.5.0")),
         .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1")),
         .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.1"),
         .package(path: "SwiftyJSON"),
         .
         
//        .package(url: "https://github.com/realm/realm-swift", Package.Dependency.Requirement.branchItem("master")),
//        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPM",
            dependencies: []),
        .testTarget(
            name: "SPMTests",
            dependencies: ["SPM"]),
    ]
)
