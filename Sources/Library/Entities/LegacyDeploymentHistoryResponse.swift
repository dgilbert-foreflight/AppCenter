// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct LegacyDeploymentHistoryResponse: Codable {
  /// Array containing the deployment's package history.
  public var history: [HistoryItem]?

  /// Information about a specific release.
  public struct HistoryItem: Codable {
    public var allOf: AllOf?
    /// The description of the release.
    public var description: String?
    /// The original deployment of the release, if it's ever been promoted.
    public var originalDeployment: String?
    /// The original label of the release, if it's ever been updated.
    public var originalLabel: String?
    /// The package's hash value (internal use).
    public var packageHash: String?

    public struct AllOf: Codable {
      /// The version of the release
      public var appVersion: String?
      /// Flag used to determine if release is disabled
      public var isDisabled: Bool?
      /// Flag used to determine if release is mandatory
      public var isMandatory: Bool?
      /// Percentage (out of 100) that release is deployed to
      public var rollout: Int?
      /// Location (URL) of release package
      public var blobURL: String?
      /// Size of release package
      public var size: Int?
      /// Method used to deploy release
      public var releaseMethod: String?
      /// Release upload time as epoch Unix timestamp
      public var uploadTime: Int?
      /// Release label (aka release name)
      public var label: String?
      /// User ID that triggered most recent release
      public var releasedByUserID: String?
      /// The URL location of the package's manifest file.
      public var manifestBlobURL: String?
      /// Object containing URL and size of changed package hashes contained in the release
      public var diffPackageMap: [String: AnyJSON]?

      public init(appVersion: String? = nil, isDisabled: Bool? = nil, isMandatory: Bool? = nil, rollout: Int? = nil, blobURL: String? = nil, size: Int? = nil, releaseMethod: String? = nil, uploadTime: Int? = nil, label: String? = nil, releasedByUserID: String? = nil, manifestBlobURL: String? = nil, diffPackageMap: [String: AnyJSON]? = nil) {
        self.appVersion = appVersion
        self.isDisabled = isDisabled
        self.isMandatory = isMandatory
        self.rollout = rollout
        self.blobURL = blobURL
        self.size = size
        self.releaseMethod = releaseMethod
        self.uploadTime = uploadTime
        self.label = label
        self.releasedByUserID = releasedByUserID
        self.manifestBlobURL = manifestBlobURL
        self.diffPackageMap = diffPackageMap
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.appVersion = try values.decodeIfPresent(String.self, forKey: "appVersion")
        self.isDisabled = try values.decodeIfPresent(Bool.self, forKey: "isDisabled")
        self.isMandatory = try values.decodeIfPresent(Bool.self, forKey: "isMandatory")
        self.rollout = try values.decodeIfPresent(Int.self, forKey: "rollout")
        self.blobURL = try values.decodeIfPresent(String.self, forKey: "blobUrl")
        self.size = try values.decodeIfPresent(Int.self, forKey: "size")
        self.releaseMethod = try values.decodeIfPresent(String.self, forKey: "releaseMethod")
        self.uploadTime = try values.decodeIfPresent(Int.self, forKey: "uploadTime")
        self.label = try values.decodeIfPresent(String.self, forKey: "label")
        self.releasedByUserID = try values.decodeIfPresent(String.self, forKey: "releasedByUserId")
        self.manifestBlobURL = try values.decodeIfPresent(String.self, forKey: "manifestBlobUrl")
        self.diffPackageMap = try values.decodeIfPresent([String: AnyJSON].self, forKey: "diffPackageMap")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(appVersion, forKey: "appVersion")
        try values.encodeIfPresent(isDisabled, forKey: "isDisabled")
        try values.encodeIfPresent(isMandatory, forKey: "isMandatory")
        try values.encodeIfPresent(rollout, forKey: "rollout")
        try values.encodeIfPresent(blobURL, forKey: "blobUrl")
        try values.encodeIfPresent(size, forKey: "size")
        try values.encodeIfPresent(releaseMethod, forKey: "releaseMethod")
        try values.encodeIfPresent(uploadTime, forKey: "uploadTime")
        try values.encodeIfPresent(label, forKey: "label")
        try values.encodeIfPresent(releasedByUserID, forKey: "releasedByUserId")
        try values.encodeIfPresent(manifestBlobURL, forKey: "manifestBlobUrl")
        try values.encodeIfPresent(diffPackageMap, forKey: "diffPackageMap")
      }
    }

    public init(allOf: AllOf? = nil, description: String? = nil, originalDeployment: String? = nil, originalLabel: String? = nil, packageHash: String? = nil) {
      self.allOf = allOf
      self.description = description
      self.originalDeployment = originalDeployment
      self.originalLabel = originalLabel
      self.packageHash = packageHash
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.allOf = try values.decodeIfPresent(AllOf.self, forKey: "allOf")
      self.description = try values.decodeIfPresent(String.self, forKey: "description")
      self.originalDeployment = try values.decodeIfPresent(String.self, forKey: "originalDeployment")
      self.originalLabel = try values.decodeIfPresent(String.self, forKey: "originalLabel")
      self.packageHash = try values.decodeIfPresent(String.self, forKey: "packageHash")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(allOf, forKey: "allOf")
      try values.encodeIfPresent(description, forKey: "description")
      try values.encodeIfPresent(originalDeployment, forKey: "originalDeployment")
      try values.encodeIfPresent(originalLabel, forKey: "originalLabel")
      try values.encodeIfPresent(packageHash, forKey: "packageHash")
    }
  }

  public init(history: [HistoryItem]? = nil) {
    self.history = history
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.history = try values.decodeIfPresent([HistoryItem].self, forKey: "history")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(history, forKey: "history")
  }
}
