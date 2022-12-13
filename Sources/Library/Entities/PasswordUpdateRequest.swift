// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PasswordUpdateRequest: Codable {
  /// The new password that will be set for the user. Needs to be at least 8 characters long and contain at least one lower- and one uppercase letter.
  public var newPassword: String
  /// The old password, if needed.
  public var oldPassword: String?

  public init(newPassword: String, oldPassword: String? = nil) {
    self.newPassword = newPassword
    self.oldPassword = oldPassword
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.newPassword = try values.decode(String.self, forKey: "new_password")
    self.oldPassword = try values.decodeIfPresent(String.self, forKey: "old_password")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(newPassword, forKey: "new_password")
    try values.encodeIfPresent(oldPassword, forKey: "old_password")
  }
}
