// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// New app release alerting event
public struct NewAppReleaseAlertingEvent: Codable {
  /// ISO 8601 date time when event was generated
  public var eventTimestamp: String
  /// A unique identifier for this event instance. Useful for deduplication
  public var eventID: String
  /// Obsolete. Use emailProperties.
  public var properties: [String: AnyJSON]?
  /// List of users who need to receive an email notification. If this is not null, then only sending emails will be triggered even if the event requires calling webhooks or doing other actions.
  public var userIDs: [String]?
  /// Indicate whether notify via webhook or not
  public var isDisableWebhook: Bool?
  /// Properties of new application release
  public var appReleaseProperties: AppReleaseProperties?

  /// Properties of new application release
  public struct AppReleaseProperties: Codable {
    public var appName: String
    public var appDisplayName: String
    public var releaseID: String
    public var platform: String
    /// Date and time in ISO 8601 format
    public var uploadedAt: String
    public var fingerprint: String?
    public var releaseNotes: String?
    public var version: String
    public var shortVersion: String
    public var minOs: String?
    public var isMandatoryUpdate: Bool?
    public var size: Int
    public var provisioningProfileName: String?
    public var provisioningProfileType: String?
    public var bundleIdentifier: String
    public var installLink: String
    public var iconLink: String?
    public var distributionGroupID: String?
    public var isInstallable: Bool?

    public init(appName: String, appDisplayName: String, releaseID: String, platform: String, uploadedAt: String, fingerprint: String? = nil, releaseNotes: String? = nil, version: String, shortVersion: String, minOs: String? = nil, isMandatoryUpdate: Bool? = nil, size: Int, provisioningProfileName: String? = nil, provisioningProfileType: String? = nil, bundleIdentifier: String, installLink: String, iconLink: String? = nil, distributionGroupID: String? = nil, isInstallable: Bool? = nil) {
      self.appName = appName
      self.appDisplayName = appDisplayName
      self.releaseID = releaseID
      self.platform = platform
      self.uploadedAt = uploadedAt
      self.fingerprint = fingerprint
      self.releaseNotes = releaseNotes
      self.version = version
      self.shortVersion = shortVersion
      self.minOs = minOs
      self.isMandatoryUpdate = isMandatoryUpdate
      self.size = size
      self.provisioningProfileName = provisioningProfileName
      self.provisioningProfileType = provisioningProfileType
      self.bundleIdentifier = bundleIdentifier
      self.installLink = installLink
      self.iconLink = iconLink
      self.distributionGroupID = distributionGroupID
      self.isInstallable = isInstallable
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.appName = try values.decode(String.self, forKey: "app_name")
      self.appDisplayName = try values.decode(String.self, forKey: "app_display_name")
      self.releaseID = try values.decode(String.self, forKey: "release_id")
      self.platform = try values.decode(String.self, forKey: "platform")
      self.uploadedAt = try values.decode(String.self, forKey: "uploaded_at")
      self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
      self.releaseNotes = try values.decodeIfPresent(String.self, forKey: "release_notes")
      self.version = try values.decode(String.self, forKey: "version")
      self.shortVersion = try values.decode(String.self, forKey: "short_version")
      self.minOs = try values.decodeIfPresent(String.self, forKey: "min_os")
      self.isMandatoryUpdate = try values.decodeIfPresent(Bool.self, forKey: "mandatory_update")
      self.size = try values.decode(Int.self, forKey: "size")
      self.provisioningProfileName = try values.decodeIfPresent(String.self, forKey: "provisioning_profile_name")
      self.provisioningProfileType = try values.decodeIfPresent(String.self, forKey: "provisioning_profile_type")
      self.bundleIdentifier = try values.decode(String.self, forKey: "bundle_identifier")
      self.installLink = try values.decode(String.self, forKey: "install_link")
      self.iconLink = try values.decodeIfPresent(String.self, forKey: "icon_link")
      self.distributionGroupID = try values.decodeIfPresent(String.self, forKey: "distribution_group_id")
      self.isInstallable = try values.decodeIfPresent(Bool.self, forKey: "installable")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(appName, forKey: "app_name")
      try values.encode(appDisplayName, forKey: "app_display_name")
      try values.encode(releaseID, forKey: "release_id")
      try values.encode(platform, forKey: "platform")
      try values.encode(uploadedAt, forKey: "uploaded_at")
      try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
      try values.encodeIfPresent(releaseNotes, forKey: "release_notes")
      try values.encode(version, forKey: "version")
      try values.encode(shortVersion, forKey: "short_version")
      try values.encodeIfPresent(minOs, forKey: "min_os")
      try values.encodeIfPresent(isMandatoryUpdate, forKey: "mandatory_update")
      try values.encode(size, forKey: "size")
      try values.encodeIfPresent(provisioningProfileName, forKey: "provisioning_profile_name")
      try values.encodeIfPresent(provisioningProfileType, forKey: "provisioning_profile_type")
      try values.encode(bundleIdentifier, forKey: "bundle_identifier")
      try values.encode(installLink, forKey: "install_link")
      try values.encodeIfPresent(iconLink, forKey: "icon_link")
      try values.encodeIfPresent(distributionGroupID, forKey: "distribution_group_id")
      try values.encodeIfPresent(isInstallable, forKey: "installable")
    }
  }

  public init(eventTimestamp: String, eventID: String, properties: [String: AnyJSON]? = nil, userIDs: [String]? = nil, isDisableWebhook: Bool? = nil, appReleaseProperties: AppReleaseProperties? = nil) {
    self.eventTimestamp = eventTimestamp
    self.eventID = eventID
    self.properties = properties
    self.userIDs = userIDs
    self.isDisableWebhook = isDisableWebhook
    self.appReleaseProperties = appReleaseProperties
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.eventTimestamp = try values.decode(String.self, forKey: "event_timestamp")
    self.eventID = try values.decode(String.self, forKey: "event_id")
    self.properties = try values.decodeIfPresent([String: AnyJSON].self, forKey: "properties")
    self.userIDs = try values.decodeIfPresent([String].self, forKey: "user_ids")
    self.isDisableWebhook = try values.decodeIfPresent(Bool.self, forKey: "disable_webhook")
    self.appReleaseProperties = try values.decodeIfPresent(AppReleaseProperties.self, forKey: "app_release_properties")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(eventTimestamp, forKey: "event_timestamp")
    try values.encode(eventID, forKey: "event_id")
    try values.encodeIfPresent(properties, forKey: "properties")
    try values.encodeIfPresent(userIDs, forKey: "user_ids")
    try values.encodeIfPresent(isDisableWebhook, forKey: "disable_webhook")
    try values.encodeIfPresent(appReleaseProperties, forKey: "app_release_properties")
  }
}