// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GenericLogContainer: Codable {
  /// Indicates if the number of available logs are more than the max allowed return limit(100).
  public var isExceededMaxLimit: Bool?
  /// The timestamp of the last log received. This value can be used as the start time parameter in the consecutive API call.
  public var lastReceivedLogTimestamp: Date?
  /// The list of logs
  public var logs: [Log]

  /// Generic log.
  public struct Log: Codable {
    /// Log type.
    public var type: `Type`
    /// Log creation timestamp.
    public var timestamp: Date
    /// Install ID.
    public var installID: UUID
    /// Session ID.
    public var sessionID: UUID?
    /// Event ID.
    public var eventID: String?
    /// Event name.
    public var eventName: String?
    /// Message ID.
    public var messageID: String?
    /// Event specific properties.
    public var properties: [String: String]?
    /// Device characteristics.
    public var device: Device
    /// Auth service provider.
    public var authProvider: String?
    /// Account ID of the authenticated user.
    public var accountID: String?

    /// Log type.
    public enum `Type`: String, Codable, CaseIterable {
      case event
      case page
      case startSession = "start_session"
      case error
      case pushInstallation = "push_installation"
      case startService = "start_service"
      case customProperties = "custom_properties"
    }

    /// Device characteristics.
    public struct Device: Codable {
      /// Name of the SDK. Consists of the name of the SDK and the platform, e.g. "appcenter.ios", "hockeysdk.android".
      public var sdkName: String
      /// Version of the SDK in semver format, e.g. "1.2.0" or "0.12.3-alpha.1".
      public var sdkVersion: String
      /// Version of the wrapper SDK in semver format. When the SDK is embedding another base SDK (for example Xamarin.Android wraps Android), the Xamarin specific version is populated into this field while sdkVersion refers to the original Android SDK.
      public var wrapperSdkVersion: String?
      /// Name of the wrapper SDK. Consists of the name of the SDK and the wrapper platform, e.g. "appcenter.xamarin", "hockeysdk.cordova".
      public var wrapperSdkName: String?
      /// Device model (example: iPad2,3).
      public var model: String?
      /// Device manufacturer (example: HTC).
      public var oemName: String?
      /// OS name (example: iOS). The following OS names are standardized (non-exclusive): Android, iOS, macOS, tvOS, Windows.
      public var osName: String
      /// OS version (example: 9.3.0).
      public var osVersion: String
      /// OS build code (example: LMY47X).
      public var osBuild: String?
      /// API level when applicable like in Android (example: 15).
      public var osAPILevel: Int?
      /// Language code (example: en_US).
      public var locale: String
      /// The offset in minutes from UTC for the device time zone, including daylight savings time.
      public var timeZoneOffset: Int
      /// Screen size of the device in pixels (example: 640x480).
      public var screenSize: String?
      /// Application version name, e.g. 1.1.0
      public var appVersion: String
      /// Carrier name (for mobile devices).
      public var carrierName: String?
      /// Carrier country code (for mobile devices).
      public var carrierCode: String?
      /// Carrier country.
      public var carrierCountry: String?
      /// The app's build number, e.g. 42.
      public var appBuild: String
      /// The bundle identifier, package identifier, or namespace, depending on what the individual plattforms use,  .e.g com.microsoft.example.
      public var appNamespace: String?
      /// Label that is used to identify application code 'version' released via Live Update beacon running on device
      public var liveUpdateReleaseLabel: String?
      /// Identifier of environment that current application release belongs to, deployment key then maps to environment like Production, Staging.
      public var liveUpdateDeploymentKey: String?
      /// Hash of all files (ReactNative or Cordova) deployed to device via LiveUpdate beacon. Helps identify the Release version on device or need to download updates in future.
      public var liveUpdatePackageHash: String?
      /// Version of the wrapper technology framework (Xamarin runtime version or ReactNative or Cordova etc...). See wrapper_sdk_name to see if this version refers to Xamarin or ReactNative or other.
      public var wrapperRuntimeVersion: String?

      public init(sdkName: String, sdkVersion: String, wrapperSdkVersion: String? = nil, wrapperSdkName: String? = nil, model: String? = nil, oemName: String? = nil, osName: String, osVersion: String, osBuild: String? = nil, osAPILevel: Int? = nil, locale: String, timeZoneOffset: Int, screenSize: String? = nil, appVersion: String, carrierName: String? = nil, carrierCode: String? = nil, carrierCountry: String? = nil, appBuild: String, appNamespace: String? = nil, liveUpdateReleaseLabel: String? = nil, liveUpdateDeploymentKey: String? = nil, liveUpdatePackageHash: String? = nil, wrapperRuntimeVersion: String? = nil) {
        self.sdkName = sdkName
        self.sdkVersion = sdkVersion
        self.wrapperSdkVersion = wrapperSdkVersion
        self.wrapperSdkName = wrapperSdkName
        self.model = model
        self.oemName = oemName
        self.osName = osName
        self.osVersion = osVersion
        self.osBuild = osBuild
        self.osAPILevel = osAPILevel
        self.locale = locale
        self.timeZoneOffset = timeZoneOffset
        self.screenSize = screenSize
        self.appVersion = appVersion
        self.carrierName = carrierName
        self.carrierCode = carrierCode
        self.carrierCountry = carrierCountry
        self.appBuild = appBuild
        self.appNamespace = appNamespace
        self.liveUpdateReleaseLabel = liveUpdateReleaseLabel
        self.liveUpdateDeploymentKey = liveUpdateDeploymentKey
        self.liveUpdatePackageHash = liveUpdatePackageHash
        self.wrapperRuntimeVersion = wrapperRuntimeVersion
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.sdkName = try values.decode(String.self, forKey: "sdk_name")
        self.sdkVersion = try values.decode(String.self, forKey: "sdk_version")
        self.wrapperSdkVersion = try values.decodeIfPresent(String.self, forKey: "wrapper_sdk_version")
        self.wrapperSdkName = try values.decodeIfPresent(String.self, forKey: "wrapper_sdk_name")
        self.model = try values.decodeIfPresent(String.self, forKey: "model")
        self.oemName = try values.decodeIfPresent(String.self, forKey: "oem_name")
        self.osName = try values.decode(String.self, forKey: "os_name")
        self.osVersion = try values.decode(String.self, forKey: "os_version")
        self.osBuild = try values.decodeIfPresent(String.self, forKey: "os_build")
        self.osAPILevel = try values.decodeIfPresent(Int.self, forKey: "os_api_level")
        self.locale = try values.decode(String.self, forKey: "locale")
        self.timeZoneOffset = try values.decode(Int.self, forKey: "time_zone_offset")
        self.screenSize = try values.decodeIfPresent(String.self, forKey: "screen_size")
        self.appVersion = try values.decode(String.self, forKey: "app_version")
        self.carrierName = try values.decodeIfPresent(String.self, forKey: "carrier_name")
        self.carrierCode = try values.decodeIfPresent(String.self, forKey: "carrier_code")
        self.carrierCountry = try values.decodeIfPresent(String.self, forKey: "carrier_country")
        self.appBuild = try values.decode(String.self, forKey: "app_build")
        self.appNamespace = try values.decodeIfPresent(String.self, forKey: "app_namespace")
        self.liveUpdateReleaseLabel = try values.decodeIfPresent(String.self, forKey: "live_update_release_label")
        self.liveUpdateDeploymentKey = try values.decodeIfPresent(String.self, forKey: "live_update_deployment_key")
        self.liveUpdatePackageHash = try values.decodeIfPresent(String.self, forKey: "live_update_package_hash")
        self.wrapperRuntimeVersion = try values.decodeIfPresent(String.self, forKey: "wrapper_runtime_version")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(sdkName, forKey: "sdk_name")
        try values.encode(sdkVersion, forKey: "sdk_version")
        try values.encodeIfPresent(wrapperSdkVersion, forKey: "wrapper_sdk_version")
        try values.encodeIfPresent(wrapperSdkName, forKey: "wrapper_sdk_name")
        try values.encodeIfPresent(model, forKey: "model")
        try values.encodeIfPresent(oemName, forKey: "oem_name")
        try values.encode(osName, forKey: "os_name")
        try values.encode(osVersion, forKey: "os_version")
        try values.encodeIfPresent(osBuild, forKey: "os_build")
        try values.encodeIfPresent(osAPILevel, forKey: "os_api_level")
        try values.encode(locale, forKey: "locale")
        try values.encode(timeZoneOffset, forKey: "time_zone_offset")
        try values.encodeIfPresent(screenSize, forKey: "screen_size")
        try values.encode(appVersion, forKey: "app_version")
        try values.encodeIfPresent(carrierName, forKey: "carrier_name")
        try values.encodeIfPresent(carrierCode, forKey: "carrier_code")
        try values.encodeIfPresent(carrierCountry, forKey: "carrier_country")
        try values.encode(appBuild, forKey: "app_build")
        try values.encodeIfPresent(appNamespace, forKey: "app_namespace")
        try values.encodeIfPresent(liveUpdateReleaseLabel, forKey: "live_update_release_label")
        try values.encodeIfPresent(liveUpdateDeploymentKey, forKey: "live_update_deployment_key")
        try values.encodeIfPresent(liveUpdatePackageHash, forKey: "live_update_package_hash")
        try values.encodeIfPresent(wrapperRuntimeVersion, forKey: "wrapper_runtime_version")
      }
    }

    public init(type: `Type`, timestamp: Date, installID: UUID, sessionID: UUID? = nil, eventID: String? = nil, eventName: String? = nil, messageID: String? = nil, properties: [String: String]? = nil, device: Device, authProvider: String? = nil, accountID: String? = nil) {
      self.type = type
      self.timestamp = timestamp
      self.installID = installID
      self.sessionID = sessionID
      self.eventID = eventID
      self.eventName = eventName
      self.messageID = messageID
      self.properties = properties
      self.device = device
      self.authProvider = authProvider
      self.accountID = accountID
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.type = try values.decode(`Type`.self, forKey: "type")
      self.timestamp = try values.decode(Date.self, forKey: "timestamp")
      self.installID = try values.decode(UUID.self, forKey: "install_id")
      self.sessionID = try values.decodeIfPresent(UUID.self, forKey: "session_id")
      self.eventID = try values.decodeIfPresent(String.self, forKey: "event_id")
      self.eventName = try values.decodeIfPresent(String.self, forKey: "event_name")
      self.messageID = try values.decodeIfPresent(String.self, forKey: "message_id")
      self.properties = try values.decodeIfPresent([String: String].self, forKey: "properties")
      self.device = try values.decode(Device.self, forKey: "device")
      self.authProvider = try values.decodeIfPresent(String.self, forKey: "auth_provider")
      self.accountID = try values.decodeIfPresent(String.self, forKey: "account_id")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(type, forKey: "type")
      try values.encode(timestamp, forKey: "timestamp")
      try values.encode(installID, forKey: "install_id")
      try values.encodeIfPresent(sessionID, forKey: "session_id")
      try values.encodeIfPresent(eventID, forKey: "event_id")
      try values.encodeIfPresent(eventName, forKey: "event_name")
      try values.encodeIfPresent(messageID, forKey: "message_id")
      try values.encodeIfPresent(properties, forKey: "properties")
      try values.encode(device, forKey: "device")
      try values.encodeIfPresent(authProvider, forKey: "auth_provider")
      try values.encodeIfPresent(accountID, forKey: "account_id")
    }
  }

  public init(isExceededMaxLimit: Bool? = nil, lastReceivedLogTimestamp: Date? = nil, logs: [Log]) {
    self.isExceededMaxLimit = isExceededMaxLimit
    self.lastReceivedLogTimestamp = lastReceivedLogTimestamp
    self.logs = logs
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isExceededMaxLimit = try values.decodeIfPresent(Bool.self, forKey: "exceeded_max_limit")
    self.lastReceivedLogTimestamp = try values.decodeIfPresent(Date.self, forKey: "last_received_log_timestamp")
    self.logs = try values.decode([Log].self, forKey: "logs")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(isExceededMaxLimit, forKey: "exceeded_max_limit")
    try values.encodeIfPresent(lastReceivedLogTimestamp, forKey: "last_received_log_timestamp")
    try values.encode(logs, forKey: "logs")
  }
}
