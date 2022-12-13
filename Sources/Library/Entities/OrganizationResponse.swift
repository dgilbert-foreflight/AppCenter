// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct OrganizationResponse: Codable, Identifiable {
  /// The internal unique id (UUID) of the organization.
  public var id: UUID
  /// The display name of the organization
  public var displayName: String
  /// The slug name of the organization
  public var name: String
  /// The URL to a user-uploaded Avatar image
  public var avatarURL: String?
  /// The creation origin of this organization
  public var origin: Origin
  /// The creation date of this organization
  public var createdAt: String
  /// The date the organization was last updated at
  public var updatedAt: String

  /// The creation origin of this organization
  public enum Origin: String, Codable, CaseIterable {
    case appcenter
    case hockeyapp
  }

  public init(id: UUID, displayName: String, name: String, avatarURL: String? = nil, origin: Origin, createdAt: String, updatedAt: String) {
    self.id = id
    self.displayName = displayName
    self.name = name
    self.avatarURL = avatarURL
    self.origin = origin
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(UUID.self, forKey: "id")
    self.displayName = try values.decode(String.self, forKey: "display_name")
    self.name = try values.decode(String.self, forKey: "name")
    self.avatarURL = try values.decodeIfPresent(String.self, forKey: "avatar_url")
    self.origin = try values.decode(Origin.self, forKey: "origin")
    self.createdAt = try values.decode(String.self, forKey: "created_at")
    self.updatedAt = try values.decode(String.self, forKey: "updated_at")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(displayName, forKey: "display_name")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(avatarURL, forKey: "avatar_url")
    try values.encode(origin, forKey: "origin")
    try values.encode(createdAt, forKey: "created_at")
    try values.encode(updatedAt, forKey: "updated_at")
  }
}
