// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Deployment: Codable {
  public var key: String?
  public var name: String
  public var latestRelease: LatestRelease?

  public struct LatestRelease: Codable {
    public var targetBinaryRange: String?
    public var description: String?
    public var isDisabled: Bool?
    public var isMandatory: Bool?
    public var rollout: Int?
    public var label: String?
    public var packageHash: String?
    public var blobURL: String?
    public var diffPackageMap: [String: DiffPackageMapItem]?
    /// Set on 'Promote'
    public var originalDeployment: String?
    /// Set on 'Promote' and 'Rollback'
    public var originalLabel: String?
    public var releasedBy: String?
    /// The release method is unknown if unspecified
    public var releaseMethod: ReleaseMethod?
    public var size: Double?
    public var uploadTime: Int?

    public struct DiffPackageMapItem: Codable {
      public var size: Double
      public var url: String

      public init(size: Double, url: String) {
        self.size = size
        self.url = url
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.size = try values.decode(Double.self, forKey: "size")
        self.url = try values.decode(String.self, forKey: "url")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(size, forKey: "size")
        try values.encode(url, forKey: "url")
      }
    }

    /// The release method is unknown if unspecified
    public enum ReleaseMethod: String, Codable, CaseIterable {
      case upload = "Upload"
      case promote = "Promote"
      case rollback = "Rollback"
    }

    public init(targetBinaryRange: String? = nil, description: String? = nil, isDisabled: Bool? = nil, isMandatory: Bool? = nil, rollout: Int? = nil, label: String? = nil, packageHash: String? = nil, blobURL: String? = nil, diffPackageMap: [String: DiffPackageMapItem]? = nil, originalDeployment: String? = nil, originalLabel: String? = nil, releasedBy: String? = nil, releaseMethod: ReleaseMethod? = nil, size: Double? = nil, uploadTime: Int? = nil) {
      self.targetBinaryRange = targetBinaryRange
      self.description = description
      self.isDisabled = isDisabled
      self.isMandatory = isMandatory
      self.rollout = rollout
      self.label = label
      self.packageHash = packageHash
      self.blobURL = blobURL
      self.diffPackageMap = diffPackageMap
      self.originalDeployment = originalDeployment
      self.originalLabel = originalLabel
      self.releasedBy = releasedBy
      self.releaseMethod = releaseMethod
      self.size = size
      self.uploadTime = uploadTime
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.targetBinaryRange = try values.decodeIfPresent(String.self, forKey: "target_binary_range")
      self.description = try values.decodeIfPresent(String.self, forKey: "description")
      self.isDisabled = try values.decodeIfPresent(Bool.self, forKey: "is_disabled")
      self.isMandatory = try values.decodeIfPresent(Bool.self, forKey: "is_mandatory")
      self.rollout = try values.decodeIfPresent(Int.self, forKey: "rollout")
      self.label = try values.decodeIfPresent(String.self, forKey: "label")
      self.packageHash = try values.decodeIfPresent(String.self, forKey: "package_hash")
      self.blobURL = try values.decodeIfPresent(String.self, forKey: "blob_url")
      self.diffPackageMap = try values.decodeIfPresent([String: DiffPackageMapItem].self, forKey: "diff_package_map")
      self.originalDeployment = try values.decodeIfPresent(String.self, forKey: "original_deployment")
      self.originalLabel = try values.decodeIfPresent(String.self, forKey: "original_label")
      self.releasedBy = try values.decodeIfPresent(String.self, forKey: "released_by")
      self.releaseMethod = try values.decodeIfPresent(ReleaseMethod.self, forKey: "release_method")
      self.size = try values.decodeIfPresent(Double.self, forKey: "size")
      self.uploadTime = try values.decodeIfPresent(Int.self, forKey: "upload_time")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(targetBinaryRange, forKey: "target_binary_range")
      try values.encodeIfPresent(description, forKey: "description")
      try values.encodeIfPresent(isDisabled, forKey: "is_disabled")
      try values.encodeIfPresent(isMandatory, forKey: "is_mandatory")
      try values.encodeIfPresent(rollout, forKey: "rollout")
      try values.encodeIfPresent(label, forKey: "label")
      try values.encodeIfPresent(packageHash, forKey: "package_hash")
      try values.encodeIfPresent(blobURL, forKey: "blob_url")
      try values.encodeIfPresent(diffPackageMap, forKey: "diff_package_map")
      try values.encodeIfPresent(originalDeployment, forKey: "original_deployment")
      try values.encodeIfPresent(originalLabel, forKey: "original_label")
      try values.encodeIfPresent(releasedBy, forKey: "released_by")
      try values.encodeIfPresent(releaseMethod, forKey: "release_method")
      try values.encodeIfPresent(size, forKey: "size")
      try values.encodeIfPresent(uploadTime, forKey: "upload_time")
    }
  }

  public init(key: String? = nil, name: String, latestRelease: LatestRelease? = nil) {
    self.key = key
    self.name = name
    self.latestRelease = latestRelease
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.key = try values.decodeIfPresent(String.self, forKey: "key")
    self.name = try values.decode(String.self, forKey: "name")
    self.latestRelease = try values.decodeIfPresent(LatestRelease.self, forKey: "latest_release")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(key, forKey: "key")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(latestRelease, forKey: "latest_release")
  }
}
