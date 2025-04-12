import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DSKit",
    targets: [.staticFramework],
    internalDependencies: [
        .core
        // ThirdPartyLib 모듈이 있다면 여기에 추가
    ],
    hasResources: true
) 