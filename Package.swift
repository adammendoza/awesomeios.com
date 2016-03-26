import PackageDescription

let package = Package(
    name: "awesomeiosdotcom",
    dependencies: [
        .Package(url: "https://github.com/Zewo/zewo.git", majorVersion: 0, minor: 3)
    ]
)
