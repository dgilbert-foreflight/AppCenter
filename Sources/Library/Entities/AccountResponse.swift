// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountResponse: Codable, Identifiable {
  /// The internal unique id (UUID) of the account.
  public var id: UUID
  /// The display name of the account
  public var displayName: String
  /// The slug name of the account
  public var name: String
  /// The account's email. For org that value might be empty.
  public var email: String?
  /// The creation origin of this account
  public var origin: Origin
  /// The type of this account
  public var type: `Type`

  /// The creation origin of this account
  public enum Origin: String, Codable, CaseIterable {
    case appcenter
    case hockeyapp
  }

  /// The type of this account
  public enum `Type`: String, Codable, CaseIterable {
    case user
    case org
  }

  public init(id: UUID, displayName: String, name: String, email: String? = nil, origin: Origin, type: `Type`) {
    self.id = id
    self.displayName = displayName
    self.name = name
    self.email = email
    self.origin = origin
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(UUID.self, forKey: "id")
    self.displayName = try values.decode(String.self, forKey: "display_name")
    self.name = try values.decode(String.self, forKey: "name")
    self.email = try values.decodeIfPresent(String.self, forKey: "email")
    self.origin = try values.decode(Origin.self, forKey: "origin")
    self.type = try values.decode(`Type`.self, forKey: "type")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(displayName, forKey: "display_name")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(email, forKey: "email")
    try values.encode(origin, forKey: "origin")
    try values.encode(type, forKey: "type")
  }
}
