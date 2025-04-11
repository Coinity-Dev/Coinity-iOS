import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Feature",
    targets: [.staticFramework],
    internalDependencies: [
        .core,
        .domain,
        .dsKit
    ],
    hasResources: true
) 