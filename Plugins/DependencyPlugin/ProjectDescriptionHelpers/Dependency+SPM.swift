//
//  Dependency+SPM.swift
//  ConfigurationPlugin
//
//  Created by Seo Jae Hoon on 2023/11/10.
//

import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    // MARK: - Network
    static let Alamofire = TargetDependency.external(name: "Alamofire", condition: .none)
    
    // MARK: - UI
    static let Kingfisher = TargetDependency.external(name: "Kingfisher", condition: .none)
    static let SnapKit = TargetDependency.external(name: "SnapKit", condition: .none)
    
    // MARK: - Utils
    static let Then = TargetDependency.external(name: "Then", condition: .none)
    
    // MARK: - Test
    static let Quick = TargetDependency.external(name: "Quick", condition: .none)
    static let Nimble = TargetDependency.external(name: "Nimble", condition: .none)
}
