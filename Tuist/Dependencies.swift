import ProjectDescription
import DependencyPlugin
import ConfigurationPlugin

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies([
        .Alamofire,
        .Kingfisher,
        .SnapKit,
        .Then,
        .Quick,
        .Nimble
    ],
    productTypes: [
        "Alamofire": .framework,
        "Kingfisher": .framework,
        "SnapKit": .framework,
        "Then": .framework,
        "Quick": .framework,
        "Nimble": .framework
    ],
    baseSettings: .settings(base: [:])
    ),
    platforms: [.iOS]
) 