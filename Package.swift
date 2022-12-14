// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AppCenter",
  platforms: [
    .iOS(.v15),
    .macCatalyst(.v13),
    .macOS(.v12),
    .watchOS(.v6),
    .tvOS(.v13)
  ],
  products: [
    .library(name: "AppCenter", targets: ["AppCenter"]),
    .executable(name: "acbot", targets: ["Tool"]),
  ],
  dependencies: [
    .package(url: "https://github.com/kean/Get.git", from: "1.0.2"),
    .package(url: "https://github.com/CreateAPI/HTTPHeaders.git", from: "0.1.0"),
    .package(url: "https://github.com/CreateAPI/URLQueryEncoder.git", from: "0.2.0"),
    .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
    .package(url: "https://github.com/spydercapriani/KeychainWrapper.git", from: "1.2.0"),
  ],
  targets: [
    // MARK: - Library

    .target(
      name: "AppCenter",
      dependencies: [
        .product(name: "Get", package: "Get"),
        .product(name: "HTTPHeaders", package: "HTTPHeaders"),
        .product(name: "URLQueryEncoder", package: "URLQueryEncoder")
      ],
      path: "Sources/Library"
    ),

    // MARK: - Command Line Tool

    .executableTarget(
      name: "Tool",
      dependencies: [
        "AppCenter",
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        .product(name: "KeychainWrapper", package: "KeychainWrapper"),
      ]
    ),

    // MARK: - Plugins

    .binaryTarget(
      name: "create-api",
      url: "https://github.com/CreateAPI/CreateAPI/releases/download/0.1.1/create-api.artifactbundle.zip",
      checksum: "0f0cfe7300580ef3062aacf4c4936d942f5a24ab971e722566f937fa7714369a"
    ),

    // MARK: - Plugins - Commands

    // `swift package generate-api`
    .plugin(
      name: "CreateAPI",
      capability: .command(
        intent: .custom(
          verb: "generate-api",
          description: "Generates the OpenAPI entities and paths using CreateAPI"
        ),
        permissions: [
          .writeToPackageDirectory(reason: "To output the generated source code")
        ]
      ),
      dependencies: [
        .target(name: "create-api")
      ]
    ),
  ]
)
