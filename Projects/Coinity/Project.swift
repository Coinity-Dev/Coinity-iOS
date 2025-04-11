import ProjectDescription
import ProjectDescriptionHelpers
import EnvironmentPlugin

let project = Project.makeModule(
    name: Environment.workspaceName,
    targets: [.app],
    internalDependencies: [
        .feature,
        .domain,
        .dsKit
    ],
    hasResources: true
) 
