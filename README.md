# Constrain

A micro AutLayout DSL.

## Installation

### [Carthage](https://github.com/Carthage/Carthage)

Add the following dependency to your Cartfile:

```
github "clmntcrl/constrain" ~> 0.1.0
```

```
$ carthage update
```

### [SwiftPM](https://github.com/apple/swift-package-manager)

Add package as dependency:

```swift
import PackageDescription

let package = Package(
    name: "AwesomeProjectName",
    dependencies: [
        .package(url: "https://github.com/clmntcrl/constrain.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "AwesomeProjectName", dependencies: ["Constrain"])
    ]
)
```

```
$ swift build
```


## License

Swidux is released under the MIT license. See [LICENSE](LICENSE) for details.
