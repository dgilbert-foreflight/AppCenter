// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ActiveCrashingAppDetails: Codable {
  public var nextLink: String?
  /// Details of the apps with crashes
  public var appsWithCrashes: [AppsWithCrash]?

  public struct AppsWithCrash: Codable {
    /// Application identifier
    public var appID: String?
    /// Application version
    public var appVersion: String?
    /// Crash group identifier
    public var crashGroupID: String?

    public init(appID: String? = nil, appVersion: String? = nil, crashGroupID: String? = nil) {
      self.appID = appID
      self.appVersion = appVersion
      self.crashGroupID = crashGroupID
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.appID = try values.decodeIfPresent(String.self, forKey: "appId")
      self.appVersion = try values.decodeIfPresent(String.self, forKey: "appVersion")
      self.crashGroupID = try values.decodeIfPresent(String.self, forKey: "crashGroupId")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(appID, forKey: "appId")
      try values.encodeIfPresent(appVersion, forKey: "appVersion")
      try values.encodeIfPresent(crashGroupID, forKey: "crashGroupId")
    }
  }

  public init(nextLink: String? = nil, appsWithCrashes: [AppsWithCrash]? = nil) {
    self.nextLink = nextLink
    self.appsWithCrashes = appsWithCrashes
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.nextLink = try values.decodeIfPresent(String.self, forKey: "nextLink")
    self.appsWithCrashes = try values.decodeIfPresent([AppsWithCrash].self, forKey: "appsWithCrashes")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(nextLink, forKey: "nextLink")
    try values.encodeIfPresent(appsWithCrashes, forKey: "appsWithCrashes")
  }
}
