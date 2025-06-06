//
//  SettingsDictionary+.swift
//  EnvironmentPlugin
//
//  Created by Seo Jae Hoon on 2023/11/10.
//

import ProjectDescription

public extension SettingsDictionary {
    static let allLoadSettings: Self = [
        "OTHER_LDFLAGS" : [
            "$(inherited) -all_load",
            "-Xlinker -interposable"
        ]
    ]
    
    static let baseSettings: Self = [
        "OTHER_LDFLAGS" : [
            "$(inherited)",
            "-ObjC"
        ]
    ]
    
    func setHeaderSearchPath(isModule: Bool) -> SettingsDictionary {
        let GTMString = isModule
        ? "$(SRCROOT)/../../../Tuist/Dependencies/SwiftPackageManager/.build/checkouts/GTMAppAuth/GTMAppAuth/Sources/Public/GTMAppAuth"
        : "$(SRCROOT)/../../Tuist/Dependencies/SwiftPackageManager/.build/checkouts/GTMAppAuth/GTMAppAuth/Sources/Public/GTMAppAuth"
        let gtmString = isModule
        ? "$(SRCROOT)/../../../Tuist/Dependencies/SwiftPackageManager/.build/checkouts/gtm-session-fetcher/Sources/Core/Public"
        : "$(SRCROOT)/../../Tuist/Dependencies/SwiftPackageManager/.build/checkouts/gtm-session-fetcher/Sources/Core/Public"
        return merging(["HEADER_SEARCH_PATHS": ["$(inherited)",
                                        GTMString,
                                        gtmString]])
    }
    
    func setProductBundleIdentifier(_ value: String = "com.iOS$(BUNDLE_ID_SUFFIX)") -> SettingsDictionary {
        merging(["PRODUCT_BUNDLE_IDENTIFIER": SettingValue(stringLiteral: value)])
    }
    
    func setAssetcatalogCompilerAppIconName(_ value: String = "AppIcon$(BUNDLE_ID_SUFFIX)") -> SettingsDictionary {
        merging(["ASSETCATALOG_COMPILER_APPICON_NAME": SettingValue(stringLiteral: value)])
    }
    
    func setBuildActiveArchitectureOnly(_ value: Bool) -> SettingsDictionary {
        merging(["ONLY_ACTIVE_ARCH": SettingValue(stringLiteral: value ? "YES" : "NO")])
    }
    
    func setExcludedArchitectures(sdk: String = "iphonesimulator*", _ value: String = "arm64") -> SettingsDictionary {
        merging(["EXCLUDED_ARCHS[sdk=\(sdk)]": SettingValue(stringLiteral: value)])
    }
    
    func setSwiftActiveComplationConditions(_ value: String) -> SettingsDictionary {
        merging(["SWIFT_ACTIVE_COMPILATION_CONDITIONS": SettingValue(stringLiteral: value)])
    }
    
    func setAlwaysSearchUserPath(_ value: String = "NO") -> SettingsDictionary {
        merging(["ALWAYS_SEARCH_USER_PATHS": SettingValue(stringLiteral: value)])
    }
    
    func setStripDebugSymbolsDuringCopy(_ value: String = "NO") -> SettingsDictionary {
        merging(["COPY_PHASE_STRIP": SettingValue(stringLiteral: value)])
    }
    
    func setDynamicLibraryInstallNameBase(_ value: String = "@rpath") -> SettingsDictionary {
        merging(["DYLIB_INSTALL_NAME_BASE": SettingValue(stringLiteral: value)])
    }
    
    func setSkipInstall(_ value: Bool = false) -> SettingsDictionary {
        merging(["SKIP_INSTALL": SettingValue(stringLiteral: value ? "YES" : "NO")])
    }
    
    func setCodeSignManual() -> SettingsDictionary {
        merging(["CODE_SIGN_STYLE": SettingValue(stringLiteral: "Manual")])
            .merging(["DEVELOPMENT_TEAM": SettingValue(stringLiteral: "RFHV927M8S")])
    }
    
    func setCodeSignAutomatic() -> SettingsDictionary {
        merging(["CODE_SIGN_STYLE": SettingValue(stringLiteral: "Automatic")])
            .merging(["DEVELOPMENT_TEAM": SettingValue(stringLiteral: "RFHV927M8S")])
            .merging(["CODE_SIGN_IDENTITY": SettingValue(stringLiteral: "Apple Development")])
    }
    
    func setProvisioning() -> SettingsDictionary {
        merging(["PROVISIONING_PROFILE_SPECIFIER": SettingValue(stringLiteral: "$(APP_PROVISIONING_PROFILE)")])
            .merging(["PROVISIONING_PROFILE": SettingValue(stringLiteral: "$(APP_PROVISIONING_PROFILE)")])
    }
}

