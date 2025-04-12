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
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.2"),
        
        // MARK: - UI
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.3.2"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.5.1"),
    ]
) 
