import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Core",
    targets: [.staticFramework],
    externalDependencies: [
        
    ],
    hasResources: true
) 