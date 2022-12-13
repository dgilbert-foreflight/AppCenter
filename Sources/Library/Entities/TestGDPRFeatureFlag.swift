// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TestGDPRFeatureFlag: Codable {
  public var name: String?
  public var targetID: UUID?

  public init(name: String? = nil, targetID: UUID? = nil) {
    self.name = name
    self.targetID = targetID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.targetID = try values.decodeIfPresent(UUID.self, forKey: "target_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(targetID, forKey: "target_id")
  }
}
