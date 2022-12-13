// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The branch build configuration for each toolset
public struct BranchConfigurationToolsets: Codable {
  /// Build configuration when Xcode is part of the build steps
  public var xcode: Xcode?
  /// Build configuration when React Native, or other JavaScript tech, is part of the build steps
  public var javascript: Javascript?
  /// Build configuration for Xamarin projects
  public var xamarin: Xamarin?
  /// Build configuration for Android projects
  public var android: Android?

  /// Build configuration when Xcode is part of the build steps
  public struct Xcode: Codable {
    /// Xcode project/workspace path
    public var projectOrWorkspacePath: String?
    /// Path to CococaPods file, if present
    public var podfilePath: String?
    /// Path to Carthage file, if present
    public var cartfilePath: String?
    public var provisioningProfileEncoded: String?
    public var certificateEncoded: String?
    public var provisioningProfileFileID: String?
    public var certificateFileID: String?
    public var provisioningProfileUploadID: String?
    public var appExtensionProvisioningProfileFiles: [AppExtensionProvisioningProfileFile]?
    public var certificateUploadID: String?
    public var certificatePassword: String?
    public var scheme: String?
    /// Xcode version used to build. Available versions can be found in "/xcode_versions" API. Default is latest stable version, at the time when the configuration is set.
    public var xcodeVersion: String?
    public var provisioningProfileFilename: String?
    public var certificateFilename: String?
    public var teamID: String?
    public var isAutomaticSigning: Bool?
    /// The selected pbxproject hash to the repositroy
    public var xcodeProjectSha: String?
    /// The build configuration of the target to archive
    public var archiveConfiguration: String?
    /// The target id of the selected scheme to archive
    public var targetToArchive: String?
    /// Setting this to true forces the build to use Xcode legacy build system. Otherwise, the setting from workspace settings is used.
    /// By default new build system is used if workspace setting is not committed to the repository. Only used for iOS React Native app, with Xcode 10.
    public var isForceLegacyBuildSystem: Bool?

    /// Provisioning profile fetch and store information
    public struct AppExtensionProvisioningProfileFile: Codable {
      /// Name of uploaded provisioning profile
      public var fileName: String?
      /// File id from secure file storage
      public var fileID: String?
      /// Upload id to App Center File Upload Store
      public var uploadID: String?
      /// Target the provisioning profile is used to sign
      public var targetBundleIdentifier: String?

      public init(fileName: String? = nil, fileID: String? = nil, uploadID: String? = nil, targetBundleIdentifier: String? = nil) {
        self.fileName = fileName
        self.fileID = fileID
        self.uploadID = uploadID
        self.targetBundleIdentifier = targetBundleIdentifier
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
        self.fileID = try values.decodeIfPresent(String.self, forKey: "fileId")
        self.uploadID = try values.decodeIfPresent(String.self, forKey: "uploadId")
        self.targetBundleIdentifier = try values.decodeIfPresent(String.self, forKey: "targetBundleIdentifier")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(fileName, forKey: "fileName")
        try values.encodeIfPresent(fileID, forKey: "fileId")
        try values.encodeIfPresent(uploadID, forKey: "uploadId")
        try values.encodeIfPresent(targetBundleIdentifier, forKey: "targetBundleIdentifier")
      }
    }

    public init(projectOrWorkspacePath: String? = nil, podfilePath: String? = nil, cartfilePath: String? = nil, provisioningProfileEncoded: String? = nil, certificateEncoded: String? = nil, provisioningProfileFileID: String? = nil, certificateFileID: String? = nil, provisioningProfileUploadID: String? = nil, appExtensionProvisioningProfileFiles: [AppExtensionProvisioningProfileFile]? = nil, certificateUploadID: String? = nil, certificatePassword: String? = nil, scheme: String? = nil, xcodeVersion: String? = nil, provisioningProfileFilename: String? = nil, certificateFilename: String? = nil, teamID: String? = nil, isAutomaticSigning: Bool? = nil, xcodeProjectSha: String? = nil, archiveConfiguration: String? = nil, targetToArchive: String? = nil, isForceLegacyBuildSystem: Bool? = nil) {
      self.projectOrWorkspacePath = projectOrWorkspacePath
      self.podfilePath = podfilePath
      self.cartfilePath = cartfilePath
      self.provisioningProfileEncoded = provisioningProfileEncoded
      self.certificateEncoded = certificateEncoded
      self.provisioningProfileFileID = provisioningProfileFileID
      self.certificateFileID = certificateFileID
      self.provisioningProfileUploadID = provisioningProfileUploadID
      self.appExtensionProvisioningProfileFiles = appExtensionProvisioningProfileFiles
      self.certificateUploadID = certificateUploadID
      self.certificatePassword = certificatePassword
      self.scheme = scheme
      self.xcodeVersion = xcodeVersion
      self.provisioningProfileFilename = provisioningProfileFilename
      self.certificateFilename = certificateFilename
      self.teamID = teamID
      self.isAutomaticSigning = isAutomaticSigning
      self.xcodeProjectSha = xcodeProjectSha
      self.archiveConfiguration = archiveConfiguration
      self.targetToArchive = targetToArchive
      self.isForceLegacyBuildSystem = isForceLegacyBuildSystem
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.projectOrWorkspacePath = try values.decodeIfPresent(String.self, forKey: "projectOrWorkspacePath")
      self.podfilePath = try values.decodeIfPresent(String.self, forKey: "podfilePath")
      self.cartfilePath = try values.decodeIfPresent(String.self, forKey: "cartfilePath")
      self.provisioningProfileEncoded = try values.decodeIfPresent(String.self, forKey: "provisioningProfileEncoded")
      self.certificateEncoded = try values.decodeIfPresent(String.self, forKey: "certificateEncoded")
      self.provisioningProfileFileID = try values.decodeIfPresent(String.self, forKey: "provisioningProfileFileId")
      self.certificateFileID = try values.decodeIfPresent(String.self, forKey: "certificateFileId")
      self.provisioningProfileUploadID = try values.decodeIfPresent(String.self, forKey: "provisioningProfileUploadId")
      self.appExtensionProvisioningProfileFiles = try values.decodeIfPresent([AppExtensionProvisioningProfileFile].self, forKey: "appExtensionProvisioningProfileFiles")
      self.certificateUploadID = try values.decodeIfPresent(String.self, forKey: "certificateUploadId")
      self.certificatePassword = try values.decodeIfPresent(String.self, forKey: "certificatePassword")
      self.scheme = try values.decodeIfPresent(String.self, forKey: "scheme")
      self.xcodeVersion = try values.decodeIfPresent(String.self, forKey: "xcodeVersion")
      self.provisioningProfileFilename = try values.decodeIfPresent(String.self, forKey: "provisioningProfileFilename")
      self.certificateFilename = try values.decodeIfPresent(String.self, forKey: "certificateFilename")
      self.teamID = try values.decodeIfPresent(String.self, forKey: "teamId")
      self.isAutomaticSigning = try values.decodeIfPresent(Bool.self, forKey: "automaticSigning")
      self.xcodeProjectSha = try values.decodeIfPresent(String.self, forKey: "xcodeProjectSha")
      self.archiveConfiguration = try values.decodeIfPresent(String.self, forKey: "archiveConfiguration")
      self.targetToArchive = try values.decodeIfPresent(String.self, forKey: "targetToArchive")
      self.isForceLegacyBuildSystem = try values.decodeIfPresent(Bool.self, forKey: "forceLegacyBuildSystem")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(projectOrWorkspacePath, forKey: "projectOrWorkspacePath")
      try values.encodeIfPresent(podfilePath, forKey: "podfilePath")
      try values.encodeIfPresent(cartfilePath, forKey: "cartfilePath")
      try values.encodeIfPresent(provisioningProfileEncoded, forKey: "provisioningProfileEncoded")
      try values.encodeIfPresent(certificateEncoded, forKey: "certificateEncoded")
      try values.encodeIfPresent(provisioningProfileFileID, forKey: "provisioningProfileFileId")
      try values.encodeIfPresent(certificateFileID, forKey: "certificateFileId")
      try values.encodeIfPresent(provisioningProfileUploadID, forKey: "provisioningProfileUploadId")
      try values.encodeIfPresent(appExtensionProvisioningProfileFiles, forKey: "appExtensionProvisioningProfileFiles")
      try values.encodeIfPresent(certificateUploadID, forKey: "certificateUploadId")
      try values.encodeIfPresent(certificatePassword, forKey: "certificatePassword")
      try values.encodeIfPresent(scheme, forKey: "scheme")
      try values.encodeIfPresent(xcodeVersion, forKey: "xcodeVersion")
      try values.encodeIfPresent(provisioningProfileFilename, forKey: "provisioningProfileFilename")
      try values.encodeIfPresent(certificateFilename, forKey: "certificateFilename")
      try values.encodeIfPresent(teamID, forKey: "teamId")
      try values.encodeIfPresent(isAutomaticSigning, forKey: "automaticSigning")
      try values.encodeIfPresent(xcodeProjectSha, forKey: "xcodeProjectSha")
      try values.encodeIfPresent(archiveConfiguration, forKey: "archiveConfiguration")
      try values.encodeIfPresent(targetToArchive, forKey: "targetToArchive")
      try values.encodeIfPresent(isForceLegacyBuildSystem, forKey: "forceLegacyBuildSystem")
    }
  }

  /// Build configuration when React Native, or other JavaScript tech, is part of the build steps
  public struct Javascript: Codable {
    /// Path to package.json file for the main project, e.g. "package.json" or "myapp/package.json"
    public var packageJSONPath: String?
    /// Whether to run Jest unit tests, via npm test, during the build
    public var isRunTests: Bool?
    /// Version of React Native from package.json files
    public var reactNativeVersion: String?

    public init(packageJSONPath: String? = nil, isRunTests: Bool? = nil, reactNativeVersion: String? = nil) {
      self.packageJSONPath = packageJSONPath
      self.isRunTests = isRunTests
      self.reactNativeVersion = reactNativeVersion
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.packageJSONPath = try values.decodeIfPresent(String.self, forKey: "packageJsonPath")
      self.isRunTests = try values.decodeIfPresent(Bool.self, forKey: "runTests")
      self.reactNativeVersion = try values.decodeIfPresent(String.self, forKey: "reactNativeVersion")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(packageJSONPath, forKey: "packageJsonPath")
      try values.encodeIfPresent(isRunTests, forKey: "runTests")
      try values.encodeIfPresent(reactNativeVersion, forKey: "reactNativeVersion")
    }
  }

  /// Build configuration for Xamarin projects
  public struct Xamarin: Codable {
    public var slnPath: String?
    public var isSimBuild: Bool?
    public var args: String?
    public var configuration: String?
    public var p12File: String?
    public var p12Pwd: String?
    public var provProfile: String?
    public var monoVersion: String?
    public var sdkBundle: String?
    /// Symlink of the SDK Bundle and Mono installation.
    /// The build will use the associated Mono bundled with related Xamarin SDK. If both symlink and monoVersion or sdkBundle are passed, the symlink is taking precedence. If non-existing symlink is passed, the current stable Mono version will be configured for building.
    public var symlink: String?

    public init(slnPath: String? = nil, isSimBuild: Bool? = nil, args: String? = nil, configuration: String? = nil, p12File: String? = nil, p12Pwd: String? = nil, provProfile: String? = nil, monoVersion: String? = nil, sdkBundle: String? = nil, symlink: String? = nil) {
      self.slnPath = slnPath
      self.isSimBuild = isSimBuild
      self.args = args
      self.configuration = configuration
      self.p12File = p12File
      self.p12Pwd = p12Pwd
      self.provProfile = provProfile
      self.monoVersion = monoVersion
      self.sdkBundle = sdkBundle
      self.symlink = symlink
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.slnPath = try values.decodeIfPresent(String.self, forKey: "slnPath")
      self.isSimBuild = try values.decodeIfPresent(Bool.self, forKey: "isSimBuild")
      self.args = try values.decodeIfPresent(String.self, forKey: "args")
      self.configuration = try values.decodeIfPresent(String.self, forKey: "configuration")
      self.p12File = try values.decodeIfPresent(String.self, forKey: "p12File")
      self.p12Pwd = try values.decodeIfPresent(String.self, forKey: "p12Pwd")
      self.provProfile = try values.decodeIfPresent(String.self, forKey: "provProfile")
      self.monoVersion = try values.decodeIfPresent(String.self, forKey: "monoVersion")
      self.sdkBundle = try values.decodeIfPresent(String.self, forKey: "sdkBundle")
      self.symlink = try values.decodeIfPresent(String.self, forKey: "symlink")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(slnPath, forKey: "slnPath")
      try values.encodeIfPresent(isSimBuild, forKey: "isSimBuild")
      try values.encodeIfPresent(args, forKey: "args")
      try values.encodeIfPresent(configuration, forKey: "configuration")
      try values.encodeIfPresent(p12File, forKey: "p12File")
      try values.encodeIfPresent(p12Pwd, forKey: "p12Pwd")
      try values.encodeIfPresent(provProfile, forKey: "provProfile")
      try values.encodeIfPresent(monoVersion, forKey: "monoVersion")
      try values.encodeIfPresent(sdkBundle, forKey: "sdkBundle")
      try values.encodeIfPresent(symlink, forKey: "symlink")
    }
  }

  /// Build configuration for Android projects
  public struct Android: Codable {
    /// Path to the Gradle wrapper script
    ///
    /// Example: "android/gradlew"
    public var gradleWrapperPath: String?
    /// The Gradle module to build
    ///
    /// Example: "app"
    public var module: String?
    /// The Android build variant to build
    ///
    /// Example: "release"
    public var buildVariant: String?
    /// Whether to run unit tests during the build (default)
    public var isRunTests: Bool
    /// Whether to run lint checks during the build (default)
    public var isRunLint: Bool?
    /// Whether it is the root module or not
    public var isRoot: Bool?
    /// Whether to apply automatic signing or not
    public var isAutomaticSigning: Bool?
    /// The password of the keystore
    public var keystorePassword: String?
    /// The key alias
    public var keyAlias: String?
    /// The key password
    public var keyPassword: String?
    /// The name of the keystore file
    public var keystoreFilename: String?
    /// The keystore encoded value
    public var keystoreEncoded: String?

    public init(gradleWrapperPath: String? = nil, module: String? = nil, buildVariant: String? = nil, isRunTests: Bool? = nil, isRunLint: Bool? = nil, isRoot: Bool? = nil, isAutomaticSigning: Bool? = nil, keystorePassword: String? = nil, keyAlias: String? = nil, keyPassword: String? = nil, keystoreFilename: String? = nil, keystoreEncoded: String? = nil) {
      self.gradleWrapperPath = gradleWrapperPath
      self.module = module
      self.buildVariant = buildVariant
      self.isRunTests = isRunTests ?? true
      self.isRunLint = isRunLint
      self.isRoot = isRoot
      self.isAutomaticSigning = isAutomaticSigning
      self.keystorePassword = keystorePassword
      self.keyAlias = keyAlias
      self.keyPassword = keyPassword
      self.keystoreFilename = keystoreFilename
      self.keystoreEncoded = keystoreEncoded
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.gradleWrapperPath = try values.decodeIfPresent(String.self, forKey: "gradleWrapperPath")
      self.module = try values.decodeIfPresent(String.self, forKey: "module")
      self.buildVariant = try values.decodeIfPresent(String.self, forKey: "buildVariant")
      self.isRunTests = try values.decodeIfPresent(Bool.self, forKey: "runTests") ?? true
      self.isRunLint = try values.decodeIfPresent(Bool.self, forKey: "runLint")
      self.isRoot = try values.decodeIfPresent(Bool.self, forKey: "isRoot")
      self.isAutomaticSigning = try values.decodeIfPresent(Bool.self, forKey: "automaticSigning")
      self.keystorePassword = try values.decodeIfPresent(String.self, forKey: "keystorePassword")
      self.keyAlias = try values.decodeIfPresent(String.self, forKey: "keyAlias")
      self.keyPassword = try values.decodeIfPresent(String.self, forKey: "keyPassword")
      self.keystoreFilename = try values.decodeIfPresent(String.self, forKey: "keystoreFilename")
      self.keystoreEncoded = try values.decodeIfPresent(String.self, forKey: "keystoreEncoded")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(gradleWrapperPath, forKey: "gradleWrapperPath")
      try values.encodeIfPresent(module, forKey: "module")
      try values.encodeIfPresent(buildVariant, forKey: "buildVariant")
      try values.encodeIfPresent(isRunTests, forKey: "runTests")
      try values.encodeIfPresent(isRunLint, forKey: "runLint")
      try values.encodeIfPresent(isRoot, forKey: "isRoot")
      try values.encodeIfPresent(isAutomaticSigning, forKey: "automaticSigning")
      try values.encodeIfPresent(keystorePassword, forKey: "keystorePassword")
      try values.encodeIfPresent(keyAlias, forKey: "keyAlias")
      try values.encodeIfPresent(keyPassword, forKey: "keyPassword")
      try values.encodeIfPresent(keystoreFilename, forKey: "keystoreFilename")
      try values.encodeIfPresent(keystoreEncoded, forKey: "keystoreEncoded")
    }
  }

  public init(xcode: Xcode? = nil, javascript: Javascript? = nil, xamarin: Xamarin? = nil, android: Android? = nil) {
    self.xcode = xcode
    self.javascript = javascript
    self.xamarin = xamarin
    self.android = android
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.xcode = try values.decodeIfPresent(Xcode.self, forKey: "xcode")
    self.javascript = try values.decodeIfPresent(Javascript.self, forKey: "javascript")
    self.xamarin = try values.decodeIfPresent(Xamarin.self, forKey: "xamarin")
    self.android = try values.decodeIfPresent(Android.self, forKey: "android")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(xcode, forKey: "xcode")
    try values.encodeIfPresent(javascript, forKey: "javascript")
    try values.encodeIfPresent(xamarin, forKey: "xamarin")
    try values.encodeIfPresent(android, forKey: "android")
  }
}