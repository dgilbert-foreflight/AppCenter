// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionGroup: Codable, Identifiable {
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
