// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterAspcore2",
    products: [
        .library(name: "TreeSitterAspcore2", targets: ["TreeSitterAspcore2"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterAspcore2",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterAspcore2Tests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterAspcore2",
            ],
            path: "bindings/swift/TreeSitterAspcore2Tests"
        )
    ],
    cLanguageStandard: .c11
)
