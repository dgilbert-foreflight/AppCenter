// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct UserEmailRequest: Codable {
  /// The user's email address
  public var userEmail: String

  public init(userEmail: String) {
    self.userEmail = userEmail
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.userEmail = try values.decode(String.self, forKey: "user_email")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(userEmail, forKey: "user_email")
  }
}
