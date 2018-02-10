// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "GLGraphics",
    dependencies: [
	.Package(url: "https://github.com/pelmasri/OpenGL3.git", majorVersion: 5)
])
