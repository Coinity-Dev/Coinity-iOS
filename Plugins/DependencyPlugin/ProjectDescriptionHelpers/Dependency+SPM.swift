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
    static let Lottie = TargetDependency.external(name: "lottie-ios", condition: .none)
}
