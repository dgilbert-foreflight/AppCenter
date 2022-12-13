// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Details of an uploaded release
public struct ReleaseDetailsResponse: Codable, Identifiable {
  /// ID identifying this unique release.
  public var id: Int
  /// The app's name (extracted from the uploaded release).
  public var appName: String
  /// The app's display name.
  public var appDisplayName: String
  /// The app's OS.
  public var appOs: String?
  /// The release's version.<br>
  /// For iOS: CFBundleVersion from info.plist.
  /// For Android: android:versionCode from AppManifest.xml.
  public var version: String
  /// The release's origin
  public var origin: Origin?
  /// The release's short version.<br>
  /// For iOS: CFBundleShortVersionString from info.plist.
  /// For Android: android:versionName from AppManifest.xml.
  public var shortVersion: String
  /// The release's release notes.
  public var releaseNotes: String?
  /// The release's provisioning profile name.
  public var provisioningProfileName: String?
  /// The type of the provisioning profile for the requested app version.
  public var provisioningProfileType: ProvisioningProfileType?
  /// Expiration date of provisioning profile in UTC format.
  public var provisioningProfileExpiryDate: String?
  /// A flag that determines whether the release's provisioning profile is still extracted or not.
  public var isProvisioningProfileSyncing: Bool?
  /// The release's size in bytes.
  public var size: Int?
  /// The release's minimum required operating system.
  public var minOs: String?
  /// The release's device family.
  public var deviceFamily: String?
  /// The release's minimum required Android API level.
  public var androidMinAPILevel: String?
  /// The identifier of the apps bundle.
  public var bundleIdentifier: String?
  /// Hashes for the packages.
  public var packageHashes: [String]?
  /// MD5 checksum of the release binary.
  public var fingerprint: String?
  /// UTC time in ISO 8601 format of the uploaded time.
  public var uploadedAt: String
  /// The URL that hosts the binary for this release.
  public var downloadURL: String?
  /// The URL that hosts the secondary binary for this release, such as the apk file for aab releases.
  public var secondaryDownloadURL: String?
  /// A URL to the app's icon.
  public var appIconURL: String
  /// The href required to install a release on a mobile device. On iOS devices will be prefixed with `itms-services://?action=download-manifest&url=`
  public var installURL: String?
  /// OBSOLETE. Will be removed in next version. The destination type.<br>
  /// <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
  /// <b>store</b>: The release distributed to external stores and distribution_stores details will be returned.<br>
  /// <b>tester</b>: The release distributed testers details will be returned.<br>
  public var destinationType: DestinationType?
  /// OBSOLETE. Will be removed in next version. A list of distribution groups that are associated with this release.
  public var distributionGroups: [DistributionGroup]?
  /// OBSOLETE. Will be removed in next version. A list of distribution stores that are associated with this release.
  public var distributionStores: [DistributionStore]?
  /// A list of distribution groups or stores.
  public var destinations: [Destination]?
  /// In calls that allow passing `udid` in the query string, this value will hold the provisioning status of that UDID in this release. Will be ignored for non-iOS platforms.
  public var isUdidProvisioned: Bool?
  /// In calls that allow passing `udid` in the query string, this value determines if a release can be re-signed. When true, after a re-sign, the tester will be able to install the release from his registered devices. Will not be returned for non-iOS platforms.
  public var canResign: Bool?
  /// Contains metadata about the build that produced the release being uploaded
  public var build: Build?
  /// This value determines the whether a release currently is enabled or disabled.
  public var isEnabled: Bool
  /// Status of the release.
  public var status: String?
  /// This value determines if a release is external or not.
  public var isExternalBuild: Bool?

  /// The release's origin
  public enum Origin: String, Codable, CaseIterable {
    case hockeyapp
    case appcenter
  }

  /// The type of the provisioning profile for the requested app version.
  public enum ProvisioningProfileType: String, Codable, CaseIterable {
    case adhoc
    case enterprise
    case other
  }

  /// OBSOLETE. Will be removed in next version. The destination type.<br>
  /// <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
  /// <b>store</b>: The release distributed to external stores and distribution_stores details will be returned.<br>
  /// <b>tester</b>: The release distributed testers details will be returned.<br>
  public enum DestinationType: String, Codable, CaseIterable {
    case group
    case store
    case tester
  }

  public struct DistributionGroup: Codable, Identifiable {
    /// ID identifying a unique distribution group.
    public var id: String
    /// A name identifying a unique distribution group.
    public var name: String?

    public init(id: String, name: String? = nil) {
      self.id = id
      self.name = name
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decode(String.self, forKey: "id")
      self.name = try values.decodeIfPresent(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(id, forKey: "id")
      try values.encodeIfPresent(name, forKey: "name")
    }
  }

  public struct DistributionStore: Codable, Identifiable {
    /// ID identifying a unique distribution store.
    public var id: String
    /// A name identifying a unique distribution store.
    public var name: String?
    /// Type of the distribution store currently stores type can be intune, googleplay or windows.
    public var type: `Type`?
    /// Publishing status of the release in the store.
    public var publishingStatus: String?

    /// Type of the distribution store currently stores type can be intune, googleplay or windows.
    public enum `Type`: String, Codable, CaseIterable {
      case intune
      case googleplay
      case apple
      case `none`
    }

    public init(id: String, name: String? = nil, type: `Type`? = nil, publishingStatus: String? = nil) {
      self.id = id
      self.name = name
      self.type = type
      self.publishingStatus = publishingStatus
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decode(String.self, forKey: "id")
      self.name = try values.decodeIfPresent(String.self, forKey: "name")
      self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
      self.publishingStatus = try values.decodeIfPresent(String.self, forKey: "publishing_status")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(id, forKey: "id")
      try values.encodeIfPresent(name, forKey: "name")
      try values.encodeIfPresent(type, forKey: "type")
      try values.encodeIfPresent(publishingStatus, forKey: "publishing_status")
    }
  }

  public struct Destination: Codable, Identifiable {
    public var a: A
    public var b: B
    /// Name of a distribution group / distribution store. The release will be associated with this distribution group or store. If the distribution group / store doesn't exist a 400 is returned. If both distribution group / store name and id are passed, the id is taking precedence.
    public var name: String?
    /// Id of a distribution group / store. The release will be associated with this distribution group / store. If the distribution group / store doesn't exist a 400 is returned. If both distribution group / store name and id are passed, the id is taking precedence.
    public var id: String?
    /// Destination can be either store or group.
    public var destinationType: DestinationType?
    /// Display name for the group or tester
    public var displayName: String?

    public struct A: Codable, Identifiable {
      /// ID identifying a unique distribution group.
      public var id: String
      /// A name identifying a unique distribution group.
      public var name: String?
      /// Is the containing release the latest one in this distribution group.
      public var isLatest: Bool?

      public init(id: String, name: String? = nil, isLatest: Bool? = nil) {
        self.id = id
        self.name = name
        self.isLatest = isLatest
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.isLatest = try values.decodeIfPresent(Bool.self, forKey: "is_latest")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(isLatest, forKey: "is_latest")
      }
    }

    public struct B: Codable, Identifiable {
      /// ID identifying a unique distribution store.
      public var id: String
      /// A name identifying a unique distribution store.
      public var name: String?
      /// Type of the distribution store currently stores type can be intune, googleplay or windows.
      public var type: `Type`?
      /// Publishing status of the release in the store.
      public var publishingStatus: String?
      /// Is the containing release the latest one in this distribution store.
      public var isLatest: Bool?

      /// Type of the distribution store currently stores type can be intune, googleplay or windows.
      public enum `Type`: String, Codable, CaseIterable {
        case intune
        case googleplay
        case apple
        case `none`
      }

      public init(id: String, name: String? = nil, type: `Type`? = nil, publishingStatus: String? = nil, isLatest: Bool? = nil) {
        self.id = id
        self.name = name
        self.type = type
        self.publishingStatus = publishingStatus
        self.isLatest = isLatest
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
        self.publishingStatus = try values.decodeIfPresent(String.self, forKey: "publishing_status")
        self.isLatest = try values.decodeIfPresent(Bool.self, forKey: "is_latest")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(publishingStatus, forKey: "publishing_status")
        try values.encodeIfPresent(isLatest, forKey: "is_latest")
      }
    }

    /// Destination can be either store or group.
    public enum DestinationType: String, Codable, CaseIterable {
      case group
      case store
      case tester
    }

    public init(a: A, b: B, name: String? = nil, id: String? = nil, destinationType: DestinationType? = nil, displayName: String? = nil) {
      self.a = a
      self.b = b
      self.name = name
      self.id = id
      self.destinationType = destinationType
      self.displayName = displayName
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.a = try values.decode(A.self, forKey: "a")
      self.b = try values.decode(B.self, forKey: "b")
      self.name = try values.decodeIfPresent(String.self, forKey: "name")
      self.id = try values.decodeIfPresent(String.self, forKey: "id")
      self.destinationType = try values.decodeIfPresent(DestinationType.self, forKey: "destination_type")
      self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(a, forKey: "a")
      try values.encode(b, forKey: "b")
      try values.encodeIfPresent(name, forKey: "name")
      try values.encodeIfPresent(id, forKey: "id")
      try values.encodeIfPresent(destinationType, forKey: "destination_type")
      try values.encodeIfPresent(displayName, forKey: "display_name")
    }
  }

  /// Contains metadata about the build that produced the release being uploaded
  public struct Build: Codable {
    /// The branch name of the build producing the release
    public var branchName: String?
    /// The commit hash of the build producing the release
    public var commitHash: String?
    /// The commit message of the build producing the release
    public var commitMessage: String?

    public init(branchName: String? = nil, commitHash: String? = nil, commitMessage: String? = nil) {
      self.branchName = branchName
      self.commitHash = commitHash
      self.commitMessage = commitMessage
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.branchName = try values.decodeIfPresent(String.self, forKey: "branch_name")
      self.commitHash = try values.decodeIfPresent(String.self, forKey: "commit_hash")
      self.commitMessage = try values.decodeIfPresent(String.self, forKey: "commit_message")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(branchName, forKey: "branch_name")
      try values.encodeIfPresent(commitHash, forKey: "commit_hash")
      try values.encodeIfPresent(commitMessage, forKey: "commit_message")
    }
  }

  public init(id: Int, appName: String, appDisplayName: String, appOs: String? = nil, version: String, origin: Origin? = nil, shortVersion: String, releaseNotes: String? = nil, provisioningProfileName: String? = nil, provisioningProfileType: ProvisioningProfileType? = nil, provisioningProfileExpiryDate: String? = nil, isProvisioningProfileSyncing: Bool? = nil, size: Int? = nil, minOs: String? = nil, deviceFamily: String? = nil, androidMinAPILevel: String? = nil, bundleIdentifier: String? = nil, packageHashes: [String]? = nil, fingerprint: String? = nil, uploadedAt: String, downloadURL: String? = nil, secondaryDownloadURL: String? = nil, appIconURL: String, installURL: String? = nil, destinationType: DestinationType? = nil, distributionGroups: [DistributionGroup]? = nil, distributionStores: [DistributionStore]? = nil, destinations: [Destination]? = nil, isUdidProvisioned: Bool? = nil, canResign: Bool? = nil, build: Build? = nil, isEnabled: Bool, status: String? = nil, isExternalBuild: Bool? = nil) {
    self.id = id
    self.appName = appName
    self.appDisplayName = appDisplayName
    self.appOs = appOs
    self.version = version
    self.origin = origin
    self.shortVersion = shortVersion
    self.releaseNotes = releaseNotes
    self.provisioningProfileName = provisioningProfileName
    self.provisioningProfileType = provisioningProfileType
    self.provisioningProfileExpiryDate = provisioningProfileExpiryDate
    self.isProvisioningProfileSyncing = isProvisioningProfileSyncing
    self.size = size
    self.minOs = minOs
    self.deviceFamily = deviceFamily
    self.androidMinAPILevel = androidMinAPILevel
    self.bundleIdentifier = bundleIdentifier
    self.packageHashes = packageHashes
    self.fingerprint = fingerprint
    self.uploadedAt = uploadedAt
    self.downloadURL = downloadURL
    self.secondaryDownloadURL = secondaryDownloadURL
    self.appIconURL = appIconURL
    self.installURL = installURL
    self.destinationType = destinationType
    self.distributionGroups = distributionGroups
    self.distributionStores = distributionStores
    self.destinations = destinations
    self.isUdidProvisioned = isUdidProvisioned
    self.canResign = canResign
    self.build = build
    self.isEnabled = isEnabled
    self.status = status
    self.isExternalBuild = isExternalBuild
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(Int.self, forKey: "id")
    self.appName = try values.decode(String.self, forKey: "app_name")
    self.appDisplayName = try values.decode(String.self, forKey: "app_display_name")
    self.appOs = try values.decodeIfPresent(String.self, forKey: "app_os")
    self.version = try values.decode(String.self, forKey: "version")
    self.origin = try values.decodeIfPresent(Origin.self, forKey: "origin")
    self.shortVersion = try values.decode(String.self, forKey: "short_version")
    self.releaseNotes = try values.decodeIfPresent(String.self, forKey: "release_notes")
    self.provisioningProfileName = try values.decodeIfPresent(String.self, forKey: "provisioning_profile_name")
    self.provisioningProfileType = try values.decodeIfPresent(ProvisioningProfileType.self, forKey: "provisioning_profile_type")
    self.provisioningProfileExpiryDate = try values.decodeIfPresent(String.self, forKey: "provisioning_profile_expiry_date")
    self.isProvisioningProfileSyncing = try values.decodeIfPresent(Bool.self, forKey: "is_provisioning_profile_syncing")
    self.size = try values.decodeIfPresent(Int.self, forKey: "size")
    self.minOs = try values.decodeIfPresent(String.self, forKey: "min_os")
    self.deviceFamily = try values.decodeIfPresent(String.self, forKey: "device_family")
    self.androidMinAPILevel = try values.decodeIfPresent(String.self, forKey: "android_min_api_level")
    self.bundleIdentifier = try values.decodeIfPresent(String.self, forKey: "bundle_identifier")
    self.packageHashes = try values.decodeIfPresent([String].self, forKey: "package_hashes")
    self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
    self.uploadedAt = try values.decode(String.self, forKey: "uploaded_at")
    self.downloadURL = try values.decodeIfPresent(String.self, forKey: "download_url")
    self.secondaryDownloadURL = try values.decodeIfPresent(String.self, forKey: "secondary_download_url")
    self.appIconURL = try values.decode(String.self, forKey: "app_icon_url")
    self.installURL = try values.decodeIfPresent(String.self, forKey: "install_url")
    self.destinationType = try values.decodeIfPresent(DestinationType.self, forKey: "destination_type")
    self.distributionGroups = try values.decodeIfPresent([DistributionGroup].self, forKey: "distribution_groups")
    self.distributionStores = try values.decodeIfPresent([DistributionStore].self, forKey: "distribution_stores")
    self.destinations = try values.decodeIfPresent([Destination].self, forKey: "destinations")
    self.isUdidProvisioned = try values.decodeIfPresent(Bool.self, forKey: "is_udid_provisioned")
    self.canResign = try values.decodeIfPresent(Bool.self, forKey: "can_resign")
    self.build = try values.decodeIfPresent(Build.self, forKey: "build")
    self.isEnabled = try values.decode(Bool.self, forKey: "enabled")
    self.status = try values.decodeIfPresent(String.self, forKey: "status")
    self.isExternalBuild = try values.decodeIfPresent(Bool.self, forKey: "is_external_build")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(appName, forKey: "app_name")
    try values.encode(appDisplayName, forKey: "app_display_name")
    try values.encodeIfPresent(appOs, forKey: "app_os")
    try values.encode(version, forKey: "version")
    try values.encodeIfPresent(origin, forKey: "origin")
    try values.encode(shortVersion, forKey: "short_version")
    try values.encodeIfPresent(releaseNotes, forKey: "release_notes")
    try values.encodeIfPresent(provisioningProfileName, forKey: "provisioning_profile_name")
    try values.encodeIfPresent(provisioningProfileType, forKey: "provisioning_profile_type")
    try values.encodeIfPresent(provisioningProfileExpiryDate, forKey: "provisioning_profile_expiry_date")
    try values.encodeIfPresent(isProvisioningProfileSyncing, forKey: "is_provisioning_profile_syncing")
    try values.encodeIfPresent(size, forKey: "size")
    try values.encodeIfPresent(minOs, forKey: "min_os")
    try values.encodeIfPresent(deviceFamily, forKey: "device_family")
    try values.encodeIfPresent(androidMinAPILevel, forKey: "android_min_api_level")
    try values.encodeIfPresent(bundleIdentifier, forKey: "bundle_identifier")
    try values.encodeIfPresent(packageHashes, forKey: "package_hashes")
    try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
    try values.encode(uploadedAt, forKey: "uploaded_at")
    try values.encodeIfPresent(downloadURL, forKey: "download_url")
    try values.encodeIfPresent(secondaryDownloadURL, forKey: "secondary_download_url")
    try values.encode(appIconURL, forKey: "app_icon_url")
    try values.encodeIfPresent(installURL, forKey: "install_url")
    try values.encodeIfPresent(destinationType, forKey: "destination_type")
    try values.encodeIfPresent(distributionGroups, forKey: "distribution_groups")
    try values.encodeIfPresent(distributionStores, forKey: "distribution_stores")
    try values.encodeIfPresent(destinations, forKey: "destinations")
    try values.encodeIfPresent(isUdidProvisioned, forKey: "is_udid_provisioned")
    try values.encodeIfPresent(canResign, forKey: "can_resign")
    try values.encodeIfPresent(build, forKey: "build")
    try values.encode(isEnabled, forKey: "enabled")
    try values.encodeIfPresent(status, forKey: "status")
    try values.encodeIfPresent(isExternalBuild, forKey: "is_external_build")
  }
}
