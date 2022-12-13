// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct OrganizationUserPatchRequest: Codable {
  /// The user's role in the organizatiion
  public var role: Role?

  /// The user's role in the organizatiion
  public enum Role: String, Codable, CaseIterable {
    case admin
    case collaborator
    case member
  }

  public init(role: Role? = nil) {
    self.role = role
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.role = try values.decodeIfPresent(Role.self, forKey: "role")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(role, forKey: "role")
  }
}
