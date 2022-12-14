// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Details of an uploaded release
public struct ManagementReleaseDetailsResponse: Codable {
  /// ID identifying this unique release.
  public var distinctID: Int?
  /// The release's origin
  public var origin: Origin?
  /// The release's short version.<br>
  /// For iOS: CFBundleShortVersionString from info.plist.<br>
  /// For Android: android:versionName from AppManifest.xml.
  public var version: String?
  /// The release's buildVersion.<br>
  /// For iOS: CFBundleVersion from info.plist.<br>
  /// For Android: android:versionCode from AppManifest.xml.
  public var buildVersion: String?
  /// The release's sortVersion.
  public var sortVersion: String?
  /// UTC time the release was created in ISO 8601 format.
  public var createdAt: String?
  /// This value determines the whether a release currently is enabled or disabled.
  public var isEnabled: Bool?
  /// UTC time the release was created in ISO 8601 format.
  public var deletedAt: String?

  /// The release's origin
  public enum Origin: String, Codable, CaseIterable {
    case hockeyapp
    case appcenter
  }

  public init(distinctID: Int? = nil, origin: Origin? = nil, version: String? = nil, buildVersion: String? = nil, sortVersion: String? = nil, createdAt: String? = nil, isEnabled: Bool? = nil, deletedAt: String? = nil) {
    self.distinctID = distinctID
    self.origin = origin
    self.version = version
    self.buildVersion = buildVersion
    self.sortVersion = sortVersion
    self.createdAt = createdAt
    self.isEnabled = isEnabled
    self.deletedAt = deletedAt
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.distinctID = try values.decodeIfPresent(Int.self, forKey: "distinctId")
    self.origin = try values.decodeIfPresent(Origin.self, forKey: "origin")
    self.version = try values.decodeIfPresent(String.self, forKey: "version")
    self.buildVersion = try values.decodeIfPresent(String.self, forKey: "buildVersion")
    self.sortVersion = try values.decodeIfPresent(String.self, forKey: "sortVersion")
    self.createdAt = try values.decodeIfPresent(String.self, forKey: "createdAt")
    self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
    self.deletedAt = try values.decodeIfPresent(String.self, forKey: "deletedAt")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(distinctID, forKey: "distinctId")
    try values.encodeIfPresent(origin, forKey: "origin")
    try values.encodeIfPresent(version, forKey: "version")
    try values.encodeIfPresent(buildVersion, forKey: "buildVersion")
    try values.encodeIfPresent(sortVersion, forKey: "sortVersion")
    try values.encodeIfPresent(createdAt, forKey: "createdAt")
    try values.encodeIfPresent(isEnabled, forKey: "enabled")
    try values.encodeIfPresent(deletedAt, forKey: "deletedAt")
  }
}
