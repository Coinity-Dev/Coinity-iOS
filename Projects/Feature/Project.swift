import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Feature",
    targets: [.staticFramework],
    internalDependencies: [
        .dsKit,     // DesignSystemFoundation 역할
        .domain,    // UseCase 역할을 위해 Domain 모듈 의존성 유지
        // EventLogKit 모듈이 있다면 추가
    ],
    hasResources: true
) 