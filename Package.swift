// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KoreanSwiftStudentSite",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "KoreanSwiftStudentSite",
            dependencies: ["Ignite"]
        ),
    ]
)
