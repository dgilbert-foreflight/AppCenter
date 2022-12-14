// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct OrganizationRequest: Codable {
  /// The display name of the organization
  public var displayName: String?
  /// The name of the organization used in URLs
  public var name: String?

  public init(displayName: String? = nil, name: String? = nil) {
    self.displayName = displayName
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(displayName, forKey: "display_name")
    try values.encodeIfPresent(name, forKey: "name")
  }
}
