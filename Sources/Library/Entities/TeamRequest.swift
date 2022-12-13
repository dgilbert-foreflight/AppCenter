// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TeamRequest: Codable {
  /// The display name of the team
  public var displayName: String
  /// The name of the team
  public var name: String?
  /// The description of the team
  public var description: String?

  public init(displayName: String, name: String? = nil, description: String? = nil) {
    self.displayName = displayName
    self.name = name
    self.description = description
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.displayName = try values.decode(String.self, forKey: "display_name")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.description = try values.decodeIfPresent(String.self, forKey: "description")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(displayName, forKey: "display_name")
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(description, forKey: "description")
  }
}
