//
//  Enviroment.swift
//  EnvironmentPlugin
//
//  Created by Seo Jae Hoon on 2023/11/10.
//

import ProjectDescription

public enum Environment {
    public static let workspaceName = "Coinity"
}

public extension Project {
    enum Environment {
        public static let workspaceName: String = "Coinity"
        public static let deploymentTarget = DeploymentTargets.iOS("16.0")
        public static let platform = Destinations.iOS
        public static let bundlePrefix = "com.coinity.Coinity-iOS"
        public static let appVersion: String = "1.0.0"
    }
}
