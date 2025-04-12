import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Entity",
    targets: [.staticFramework],
    internalDependencies: [
        .core
    ],
    hasResources: false
) 