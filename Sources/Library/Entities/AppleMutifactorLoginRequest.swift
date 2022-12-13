// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Apple credentials needed to log into the Apple Developer Portal
public struct AppleMutifactorLoginRequest: Codable {
  /// The username for the Apple Developer account.
  public var username: String
  /// This is the six digit OTP used for completing the multi-factor authentication
  public var authcode: String

  public init(username: String, authcode: String) {
    self.username = username
    self.authcode = authcode
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.username = try values.decode(String.self, forKey: "username")
    self.authcode = try values.decode(String.self, forKey: "authcode")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(username, forKey: "username")
    try values.encode(authcode, forKey: "authcode")
  }
}