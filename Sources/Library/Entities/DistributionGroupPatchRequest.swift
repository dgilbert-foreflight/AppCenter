// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionGroupPatchRequest: Codable {
  /// The name of the distribution group
  public var name: String?
  /// Whether the distribution group is public
  public var isPublic: Bool?

  public init(name: String? = nil, isPublic: Bool? = nil) {
    self.name = name
    self.isPublic = isPublic
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.isPublic = try values.decodeIfPresent(Bool.self, forKey: "is_public")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(isPublic, forKey: "is_public")
  }
}
