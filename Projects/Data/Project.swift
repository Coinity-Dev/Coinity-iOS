import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Data",
    targets: [.staticFramework],
    internalDependencies: [
        .core
    ],
    externalDependencies: [
        .SPM.Alamofire
    ]
) 