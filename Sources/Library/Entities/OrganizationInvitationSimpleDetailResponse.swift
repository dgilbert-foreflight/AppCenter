// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct OrganizationInvitationSimpleDetailResponse: Codable, Identifiable {
  /// The unique ID (UUID) of the invitation
  public var id: UUID
  /// The email address of the invited user
  public var email: String
  /// The role assigned to the invited user
  public var role: String

  public init(id: UUID, email: String, role: String) {
    self.id = id
    self.email = email
    self.role = role
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(UUID.self, forKey: "id")
    self.email = try values.decode(String.self, forKey: "email")
    self.role = try values.decode(String.self, forKey: "role")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(email, forKey: "email")
    try values.encode(role, forKey: "role")
  }
}