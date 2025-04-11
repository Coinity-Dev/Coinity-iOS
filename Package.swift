// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription
    import ProjectDescriptionHelpers

    let packageSettings = PackageSettings(
        productTypes: [
            "Promises": .framework,
            "FBLPromises": .framework // default is .staticFramework
        ],
        projectOptions: [
            "Promises": .options(disableBundleAccessors: true, disableSynthesizedResourceAccessors: true),
            "FBLPromises": .options(disableBundleAccessors: true, disableSynthesizedResourceAccessors: true)
        ]
    )
#endif

let package = Package(
    name: "Coinity",
    dependencies: [
        // MARK: - Network
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.4"),
        
        // MARK: - UI
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.0.0"),
        
        // MARK: - Utils
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.6.0"),
        .package(url: "https://github.com/devxoul/Then.git", from: "3.0.0"),
        
        // MARK: - Test
        .package(url: "https://github.com/Quick/Quick", from: "7.0.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "12.0.0")
    ]
) 