// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A collection of projects for each type of toolset
public struct ToolsetProjects: Codable {
  /// The commit hash of the analyzed commit
  public var commit: String?
  public var xcode: Xcode?
  public var javascript: Javascript?
  public var xamarin: Xamarin?
  public var android: Android?
  /// A collection of detected pre/post buildscripts for current platform toolset
  public var buildscripts: [String: AnyJSON]?
  public var uwp: Uwp?
  public var testcloud: Testcloud?

  public struct Xcode: Codable {
    /// The Xcode scheme containers
    public var xcodeSchemeContainers: [XcodeSchemeContainer]

    public struct XcodeSchemeContainer: Codable {
      /// Path to project
      public var path: String
      /// Project schemes
      public var sharedSchemes: [SharedScheme]
      /// Path to CocoaPods file, if present
      public var podfilePath: String?
      /// Path to Carthage file, if present
      public var cartfilePath: String?
      /// Repo object Id of the pbxproject
      public var xcodeProjectSha: String?
      /// Related projects paths for xcworkspace
      public var workspaceProjectPaths: String?
      /// Information regarding project app extensions, if present
      public var appExtensionTargets: [AppExtensionTarget]?

      public struct SharedScheme: Codable {
        /// Scheme name
        public var name: String
        /// Does scheme have a test action?
        public var hasTestAction: Bool
        /// Build configuration set in Archive action
        public var archiveConfiguration: String?
        public var archiveProject: ArchiveProject?

        public struct ArchiveProject: Codable {
          /// The Id of the target to archive
          public var archiveTargetID: String
          /// The project to archive container name
          public var projectName: String
          /// Full path of the target project
          public var projectPath: String?

          public init(archiveTargetID: String, projectName: String, projectPath: String? = nil) {
            self.archiveTargetID = archiveTargetID
            self.projectName = projectName
            self.projectPath = projectPath
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.archiveTargetID = try values.decode(String.self, forKey: "archiveTargetId")
            self.projectName = try values.decode(String.self, forKey: "projectName")
            self.projectPath = try values.decodeIfPresent(String.self, forKey: "projectPath")
          }

          public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(archiveTargetID, forKey: "archiveTargetId")
            try values.encode(projectName, forKey: "projectName")
            try values.encodeIfPresent(projectPath, forKey: "projectPath")
          }
        }

        public init(name: String, hasTestAction: Bool, archiveConfiguration: String? = nil, archiveProject: ArchiveProject? = nil) {
          self.name = name
          self.hasTestAction = hasTestAction
          self.archiveConfiguration = archiveConfiguration
          self.archiveProject = archiveProject
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.name = try values.decode(String.self, forKey: "name")
          self.hasTestAction = try values.decode(Bool.self, forKey: "hasTestAction")
          self.archiveConfiguration = try values.decodeIfPresent(String.self, forKey: "archiveConfiguration")
          self.archiveProject = try values.decodeIfPresent(ArchiveProject.self, forKey: "archiveProject")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encode(name, forKey: "name")
          try values.encode(hasTestAction, forKey: "hasTestAction")
          try values.encodeIfPresent(archiveConfiguration, forKey: "archiveConfiguration")
          try values.encodeIfPresent(archiveProject, forKey: "archiveProject")
        }
      }

      /// App extension information
      public struct AppExtensionTarget: Codable {
        /// App extension name
        public var name: String
        /// App extension bundle identifier
        public var targetBundleIdentifier: String

        public init(name: String, targetBundleIdentifier: String) {
          self.name = name
          self.targetBundleIdentifier = targetBundleIdentifier
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.name = try values.decode(String.self, forKey: "name")
          self.targetBundleIdentifier = try values.decode(String.self, forKey: "targetBundleIdentifier")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encode(name, forKey: "name")
          try values.encode(targetBundleIdentifier, forKey: "targetBundleIdentifier")
        }
      }

      public init(path: String, sharedSchemes: [SharedScheme], podfilePath: String? = nil, cartfilePath: String? = nil, xcodeProjectSha: String? = nil, workspaceProjectPaths: String? = nil, appExtensionTargets: [AppExtensionTarget]? = nil) {
        self.path = path
        self.sharedSchemes = sharedSchemes
        self.podfilePath = podfilePath
        self.cartfilePath = cartfilePath
        self.xcodeProjectSha = xcodeProjectSha
        self.workspaceProjectPaths = workspaceProjectPaths
        self.appExtensionTargets = appExtensionTargets
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.path = try values.decode(String.self, forKey: "path")
        self.sharedSchemes = try values.decode([SharedScheme].self, forKey: "sharedSchemes")
        self.podfilePath = try values.decodeIfPresent(String.self, forKey: "podfilePath")
        self.cartfilePath = try values.decodeIfPresent(String.self, forKey: "cartfilePath")
        self.xcodeProjectSha = try values.decodeIfPresent(String.self, forKey: "xcodeProjectSha")
        self.workspaceProjectPaths = try values.decodeIfPresent(String.self, forKey: "workspaceProjectPaths")
        self.appExtensionTargets = try values.decodeIfPresent([AppExtensionTarget].self, forKey: "appExtensionTargets")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(path, forKey: "path")
        try values.encode(sharedSchemes, forKey: "sharedSchemes")
        try values.encodeIfPresent(podfilePath, forKey: "podfilePath")
        try values.encodeIfPresent(cartfilePath, forKey: "cartfilePath")
        try values.encodeIfPresent(xcodeProjectSha, forKey: "xcodeProjectSha")
        try values.encodeIfPresent(workspaceProjectPaths, forKey: "workspaceProjectPaths")
        try values.encodeIfPresent(appExtensionTargets, forKey: "appExtensionTargets")
      }
    }

    public init(xcodeSchemeContainers: [XcodeSchemeContainer]) {
      self.xcodeSchemeContainers = xcodeSchemeContainers
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.xcodeSchemeContainers = try values.decode([XcodeSchemeContainer].self, forKey: "xcodeSchemeContainers")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(xcodeSchemeContainers, forKey: "xcodeSchemeContainers")
    }
  }

  public struct Javascript: Codable {
    /// Paths for detected package.json files
    public var packageJSONPaths: [String]
    /// The React Native solutions detected
    public var javascriptSolutions: [JavascriptSolution]?

    public struct JavascriptSolution: Codable {
      /// The path to the detected package.json
      public var packageJSONPath: String
      /// Version of React Native from package.json files
      public var reactNativeVersion: String?

      public init(packageJSONPath: String, reactNativeVersion: String? = nil) {
        self.packageJSONPath = packageJSONPath
        self.reactNativeVersion = reactNativeVersion
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.packageJSONPath = try values.decode(String.self, forKey: "packageJsonPath")
        self.reactNativeVersion = try values.decodeIfPresent(String.self, forKey: "reactNativeVersion")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(packageJSONPath, forKey: "packageJsonPath")
        try values.encodeIfPresent(reactNativeVersion, forKey: "reactNativeVersion")
      }
    }

    public init(packageJSONPaths: [String], javascriptSolutions: [JavascriptSolution]? = nil) {
      self.packageJSONPaths = packageJSONPaths
      self.javascriptSolutions = javascriptSolutions
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.packageJSONPaths = try values.decode([String].self, forKey: "packageJsonPaths")
      self.javascriptSolutions = try values.decodeIfPresent([JavascriptSolution].self, forKey: "javascriptSolutions")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(packageJSONPaths, forKey: "packageJsonPaths")
      try values.encodeIfPresent(javascriptSolutions, forKey: "javascriptSolutions")
    }
  }

  public struct Xamarin: Codable {
    /// Xamarin solutions for the toolset
    public var xamarinSolutions: [XamarinSolution]

    public struct XamarinSolution: Codable {
      /// Path to solution
      public var path: String
      /// Solution configurations
      public var configurations: [String]
      /// Solution default configuration
      public var defaultConfiguration: String?

      public init(path: String, configurations: [String], defaultConfiguration: String? = nil) {
        self.path = path
        self.configurations = configurations
        self.defaultConfiguration = defaultConfiguration
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.path = try values.decode(String.self, forKey: "path")
        self.configurations = try values.decode([String].self, forKey: "configurations")
        self.defaultConfiguration = try values.decodeIfPresent(String.self, forKey: "defaultConfiguration")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(path, forKey: "path")
        try values.encode(configurations, forKey: "configurations")
        try values.encodeIfPresent(defaultConfiguration, forKey: "defaultConfiguration")
      }
    }

    public init(xamarinSolutions: [XamarinSolution]) {
      self.xamarinSolutions = xamarinSolutions
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.xamarinSolutions = try values.decode([XamarinSolution].self, forKey: "xamarinSolutions")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(xamarinSolutions, forKey: "xamarinSolutions")
    }
  }

  public struct Android: Codable {
    /// Android Gradle modules
    public var androidModules: [AndroidModule]
    /// The path of the Gradle wrapper
    public var gradleWrapperPath: String?

    public struct AndroidModule: Codable {
      /// Name of the Android module
      public var name: String
      /// Module contains bundle settings
      public var hasBundle: Bool?
      /// The product flavors of the Android module
      public var productFlavors: [String]?
      /// The detected build variants of the Android module (matrix of product flavor + build type (debug|release))
      public var buildVariants: [String]?
      /// The detected build types of the Android module
      public var buildTypes: [String]?
      /// The detected build configurations of the Android module
      public var buildConfigurations: [BuildConfiguration]?
      /// Whether the module is at the root level of the project
      public var isRoot: Bool?

      public struct BuildConfiguration: Codable {
        /// Name of build configuration (the same as a build type name)
        public var name: String
        /// Android signing config. Null if not specified
        public var signingConfig: SigningConfig?

        /// Android signing config. Null if not specified
        public struct SigningConfig: Codable {
          /// Indicates if storeFile is specified in the signing configuration
          public var hasStoreFile: Bool?

          public init(hasStoreFile: Bool? = nil) {
            self.hasStoreFile = hasStoreFile
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.hasStoreFile = try values.decodeIfPresent(Bool.self, forKey: "hasStoreFile")
          }

          public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(hasStoreFile, forKey: "hasStoreFile")
          }
        }

        public init(name: String, signingConfig: SigningConfig? = nil) {
          self.name = name
          self.signingConfig = signingConfig
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.name = try values.decode(String.self, forKey: "name")
          self.signingConfig = try values.decodeIfPresent(SigningConfig.self, forKey: "signingConfig")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encode(name, forKey: "name")
          try values.encodeIfPresent(signingConfig, forKey: "signingConfig")
        }
      }

      public init(name: String, hasBundle: Bool? = nil, productFlavors: [String]? = nil, buildVariants: [String]? = nil, buildTypes: [String]? = nil, buildConfigurations: [BuildConfiguration]? = nil, isRoot: Bool? = nil) {
        self.name = name
        self.hasBundle = hasBundle
        self.productFlavors = productFlavors
        self.buildVariants = buildVariants
        self.buildTypes = buildTypes
        self.buildConfigurations = buildConfigurations
        self.isRoot = isRoot
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.hasBundle = try values.decodeIfPresent(Bool.self, forKey: "hasBundle")
        self.productFlavors = try values.decodeIfPresent([String].self, forKey: "productFlavors")
        self.buildVariants = try values.decodeIfPresent([String].self, forKey: "buildVariants")
        self.buildTypes = try values.decodeIfPresent([String].self, forKey: "buildTypes")
        self.buildConfigurations = try values.decodeIfPresent([BuildConfiguration].self, forKey: "buildConfigurations")
        self.isRoot = try values.decodeIfPresent(Bool.self, forKey: "isRoot")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(hasBundle, forKey: "hasBundle")
        try values.encodeIfPresent(productFlavors, forKey: "productFlavors")
        try values.encodeIfPresent(buildVariants, forKey: "buildVariants")
        try values.encodeIfPresent(buildTypes, forKey: "buildTypes")
        try values.encodeIfPresent(buildConfigurations, forKey: "buildConfigurations")
        try values.encodeIfPresent(isRoot, forKey: "isRoot")
      }
    }

    public init(androidModules: [AndroidModule], gradleWrapperPath: String? = nil) {
      self.androidModules = androidModules
      self.gradleWrapperPath = gradleWrapperPath
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.androidModules = try values.decode([AndroidModule].self, forKey: "androidModules")
      self.gradleWrapperPath = try values.decodeIfPresent(String.self, forKey: "gradleWrapperPath")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(androidModules, forKey: "androidModules")
      try values.encodeIfPresent(gradleWrapperPath, forKey: "gradleWrapperPath")
    }
  }

  public struct Uwp: Codable {
    /// The UWP solutions detected
    public var uwpSolutions: [UwpSolution]

    public struct UwpSolution: Codable {
      /// The path to the UWP solution
      public var path: String
      /// The possible configurations detected for the UWP solution
      public var configurations: [String]

      public init(path: String, configurations: [String]) {
        self.path = path
        self.configurations = configurations
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.path = try values.decode(String.self, forKey: "path")
        self.configurations = try values.decode([String].self, forKey: "configurations")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(path, forKey: "path")
        try values.encode(configurations, forKey: "configurations")
      }
    }

    public init(uwpSolutions: [UwpSolution]) {
      self.uwpSolutions = uwpSolutions
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.uwpSolutions = try values.decode([UwpSolution].self, forKey: "uwpSolutions")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(uwpSolutions, forKey: "uwpSolutions")
    }
  }

  public struct Testcloud: Codable {
    /// The TestCloud projects detected
    public var projects: [Project]

    public struct Project: Codable {
      /// The path to the TestCloud project
      public var path: String
      public var frameworkType: FrameworkType
      public var frameworkProperties: FrameworkProperties?

      public enum FrameworkType: String, Codable, CaseIterable {
        case appium = "Appium"
        case calabash = "Calabash"
        case espresso = "Espresso"
        case uITest = "UITest"
        case generated = "Generated"
      }

      public struct FrameworkProperties: Codable {
        public var configurations: [String]?

        public init(configurations: [String]? = nil) {
          self.configurations = configurations
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.configurations = try values.decodeIfPresent([String].self, forKey: "configurations")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encodeIfPresent(configurations, forKey: "configurations")
        }
      }

      public init(path: String, frameworkType: FrameworkType, frameworkProperties: FrameworkProperties? = nil) {
        self.path = path
        self.frameworkType = frameworkType
        self.frameworkProperties = frameworkProperties
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.path = try values.decode(String.self, forKey: "path")
        self.frameworkType = try values.decode(FrameworkType.self, forKey: "frameworkType")
        self.frameworkProperties = try values.decodeIfPresent(FrameworkProperties.self, forKey: "frameworkProperties")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(path, forKey: "path")
        try values.encode(frameworkType, forKey: "frameworkType")
        try values.encodeIfPresent(frameworkProperties, forKey: "frameworkProperties")
      }
    }

    public init(projects: [Project]) {
      self.projects = projects
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.projects = try values.decode([Project].self, forKey: "projects")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(projects, forKey: "projects")
    }
  }

  public init(commit: String? = nil, xcode: Xcode? = nil, javascript: Javascript? = nil, xamarin: Xamarin? = nil, android: Android? = nil, buildscripts: [String: AnyJSON]? = nil, uwp: Uwp? = nil, testcloud: Testcloud? = nil) {
    self.commit = commit
    self.xcode = xcode
    self.javascript = javascript
    self.xamarin = xamarin
    self.android = android
    self.buildscripts = buildscripts
    self.uwp = uwp
    self.testcloud = testcloud
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.commit = try values.decodeIfPresent(String.self, forKey: "commit")
    self.xcode = try values.decodeIfPresent(Xcode.self, forKey: "xcode")
    self.javascript = try values.decodeIfPresent(Javascript.self, forKey: "javascript")
    self.xamarin = try values.decodeIfPresent(Xamarin.self, forKey: "xamarin")
    self.android = try values.decodeIfPresent(Android.self, forKey: "android")
    self.buildscripts = try values.decodeIfPresent([String: AnyJSON].self, forKey: "buildscripts")
    self.uwp = try values.decodeIfPresent(Uwp.self, forKey: "uwp")
    self.testcloud = try values.decodeIfPresent(Testcloud.self, forKey: "testcloud")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(commit, forKey: "commit")
    try values.encodeIfPresent(xcode, forKey: "xcode")
    try values.encodeIfPresent(javascript, forKey: "javascript")
    try values.encodeIfPresent(xamarin, forKey: "xamarin")
    try values.encodeIfPresent(android, forKey: "android")
    try values.encodeIfPresent(buildscripts, forKey: "buildscripts")
    try values.encodeIfPresent(uwp, forKey: "uwp")
    try values.encodeIfPresent(testcloud, forKey: "testcloud")
  }
}
