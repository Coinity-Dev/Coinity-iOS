//
//  Path+Extension.swift
//  ConfigurationPlugin
//
//  Created by Seo Jae Hoon on 2023/11/10.
//

import ProjectDescription

public extension ProjectDescription.Path {
    static func relativeToFeature(_ path: String) -> Self {
        return .relativeToRoot("Projects/Feature/\(path)")
    }
    
    static func relativeToModules(_ path: String) -> Self {
        return .relativeToRoot("Projects/Modules/\(path)")
    }
    
    static var app: Self {
        return .relativeToRoot("Projects/Coinity")
    }
    
    static var data: Self {
        return .relativeToRoot("Projects/Data")
    }
    
    static var domain: Self {
        return .relativeToRoot("Projects/Domain")
    }
    
    static var core: Self {
        return .relativeToRoot("Projects/Core")
    }
    
    static var dsKit: Self {
        return .relativeToRoot("Projects/DSKit")
    }
    
    static var feature: Self {
        return .relativeToRoot("Projects/Feature")
    }
}
