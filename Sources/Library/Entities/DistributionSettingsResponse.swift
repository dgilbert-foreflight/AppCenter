// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionSettingsResponse: Codable {
  /// Is this app using the "Default to Public Distribution Groups" logic
  public var isDefaultPublic: Bool

  public init(isDefaultPublic: Bool) {
    self.isDefaultPublic = isDefaultPublic
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isDefaultPublic = try values.decode(Bool.self, forKey: "default_public")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(isDefaultPublic, forKey: "default_public")
  }
}
