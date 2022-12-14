// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Branch configuration revision
public struct BranchConfigurationRevision: Codable, Identifiable {
  public var id: String?
  public var revision: Double?
  public var changedDate: String?
  public var name: String?
  public var changeType: String?
  public var definitionURL: String?
  /// User who made a change in branch configuration
  public var changedBy: ChangedBy?

  /// User who made a change in branch configuration
  public struct ChangedBy: Codable {
    public var displayName: String?
    public var url: String?

    public init(displayName: String? = nil, url: String? = nil) {
      self.displayName = displayName
      self.url = url
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
      self.url = try values.decodeIfPresent(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(displayName, forKey: "displayName")
      try values.encodeIfPresent(url, forKey: "url")
    }
  }

  public init(id: String? = nil, revision: Double? = nil, changedDate: String? = nil, name: String? = nil, changeType: String? = nil, definitionURL: String? = nil, changedBy: ChangedBy? = nil) {
    self.id = id
    self.revision = revision
    self.changedDate = changedDate
    self.name = name
    self.changeType = changeType
    self.definitionURL = definitionURL
    self.changedBy = changedBy
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(String.self, forKey: "id")
    self.revision = try values.decodeIfPresent(Double.self, forKey: "revision")
    self.changedDate = try values.decodeIfPresent(String.self, forKey: "changedDate")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.changeType = try values.decodeIfPresent(String.self, forKey: "changeType")
    self.definitionURL = try values.decodeIfPresent(String.self, forKey: "definitionUrl")
    self.changedBy = try values.decodeIfPresent(ChangedBy.self, forKey: "changedBy")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(revision, forKey: "revision")
    try values.encodeIfPresent(changedDate, forKey: "changedDate")
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(changeType, forKey: "changeType")
    try values.encodeIfPresent(definitionURL, forKey: "definitionUrl")
    try values.encodeIfPresent(changedBy, forKey: "changedBy")
  }
}
