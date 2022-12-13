// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IntuneCategories: Codable {
  /// Context
  public var odataContext: String?
  /// Categories for intune app
  public var value: [ValueItem]?

  public struct ValueItem: Codable, Identifiable {
    /// The id of the category
    public var id: String?
    /// The display name for the category
    public var displayName: String?
    /// Modified date for category
    public var lastModifiedDateTime: String?

    public init(id: String? = nil, displayName: String? = nil, lastModifiedDateTime: String? = nil) {
      self.id = id
      self.displayName = displayName
      self.lastModifiedDateTime = lastModifiedDateTime
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decodeIfPresent(String.self, forKey: "id")
      self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
      self.lastModifiedDateTime = try values.decodeIfPresent(String.self, forKey: "lastModifiedDateTime")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(id, forKey: "id")
      try values.encodeIfPresent(displayName, forKey: "displayName")
      try values.encodeIfPresent(lastModifiedDateTime, forKey: "lastModifiedDateTime")
    }
  }

  public init(odataContext: String? = nil, value: [ValueItem]? = nil) {
    self.odataContext = odataContext
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.odataContext = try values.decodeIfPresent(String.self, forKey: "odata.context")
    self.value = try values.decodeIfPresent([ValueItem].self, forKey: "value")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(odataContext, forKey: "odata.context")
    try values.encodeIfPresent(value, forKey: "value")
  }
}