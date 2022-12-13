// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct UserDataResponse: Codable, Identifiable {
  /// The unique id (UUID) of the user
  public var id: UUID?
  /// The display name of the user
  public var displayName: String?
  /// The name of the user
  public var name: String?
  /// The url at which the user's avatar can be reached
  public var avatarURL: String?

  public init(id: UUID? = nil, displayName: String? = nil, name: String? = nil, avatarURL: String? = nil) {
    self.id = id
    self.displayName = displayName
    self.name = name
    self.avatarURL = avatarURL
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(UUID.self, forKey: "id")
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.avatarURL = try values.decodeIfPresent(String.self, forKey: "avatar_url")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(displayName, forKey: "display_name")
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(avatarURL, forKey: "avatar_url")
  }
}