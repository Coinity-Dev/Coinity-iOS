import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DSKit",
    targets: [.staticFramework],
    internalDependencies: [
        .core
    ],
    hasResources: true
) 