//
//  Dependency+Project.swift
//  ConfigurationPlugin
//
//  Created by Seo Jae Hoon on 2023/11/10.
//

import ProjectDescription

public extension Dep {
    struct Features {
        
    }
    
    struct Modules { }
}
//MARK: -- Root

public extension Dep {
    static let data = Dep.project(target: "Data", path: .data)
    
    static let domain = Dep.project(target: "Domain", path: .domain)
    
    static let feature = Dep.project(target: "Feature", path: .feature)
    
    static let core = Dep.project(target: "Core", path: .core)
    
    static let dsKit = Dep.project(target: "DSKit", path: .dsKit)
}

//MARK: -- Modules

public extension Dep.Modules {
    static let thirdPartyLibs = Dep.project(target: "ThirdPartyLibs", path: .relativeToModules("ThirdPartyLibs"), condition: .none)
}

// MARK: - Feature
public extension Dep.Features {
    static func project(name: String, group: String) -> Dep { .project(target: "\(group)\(name)", path: .relativeToFeature("\(group)\(name)"))}
    
    static let BaseFeatureDependency = TargetDependency.project(target: "BaseFeatureDependency", path: .relativeToFeature("BaseFeatureDependency"))
}
