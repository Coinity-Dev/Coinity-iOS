import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Data",
    targets: [.staticFramework],
    internalDependencies: [
        .domain  // Domain 모듈을 통해 Entity와 Core에 접근 가능
    ],
    externalDependencies: [
        .SPM.Alamofire
    ]
) 