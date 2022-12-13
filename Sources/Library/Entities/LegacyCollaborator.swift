// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct LegacyCollaborator: Codable {
  /// Is current collaborator the same as current account.
  public var isCurrentAccount: Bool?
  /// Which permission does current account has.
  public var permission: String?

  public init(isCurrentAccount: Bool? = nil, permission: String? = nil) {
    self.isCurrentAccount = isCurrentAccount
    self.permission = permission
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isCurrentAccount = try values.decodeIfPresent(Bool.self, forKey: "isCurrentAccount")
    self.permission = try values.decodeIfPresent(String.self, forKey: "permission")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(isCurrentAccount, forKey: "isCurrentAccount")
    try values.encodeIfPresent(permission, forKey: "permission")
  }
}