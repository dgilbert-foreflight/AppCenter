// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionGroupWithoutIsLatest: Codable, Identifiable {
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
