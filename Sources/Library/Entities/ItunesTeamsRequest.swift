// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Apple credentials with username, password or service_connection_id of the stored credentials is needed.
public struct ItunesTeamsRequest: Codable {
  /// The username for the Apple Developer account.
  public var username: String?
  /// The password for the Apple Developer account.
  public var password: String?
  /// The service_connection_id of the stored Apple credentials instead of username, password.
  public var serviceConnectionID: String?
  /// The 30-day session cookie for multi-factor authentication backed accounts.
  public var cookie: String?

  public init(username: String? = nil, password: String? = nil, serviceConnectionID: String? = nil, cookie: String? = nil) {
    self.username = username
    self.password = password
    self.serviceConnectionID = serviceConnectionID
    self.cookie = cookie
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.username = try values.decodeIfPresent(String.self, forKey: "username")
    self.password = try values.decodeIfPresent(String.self, forKey: "password")
    self.serviceConnectionID = try values.decodeIfPresent(String.self, forKey: "service_connection_id")
    self.cookie = try values.decodeIfPresent(String.self, forKey: "cookie")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(username, forKey: "username")
    try values.encodeIfPresent(password, forKey: "password")
    try values.encodeIfPresent(serviceConnectionID, forKey: "service_connection_id")
    try values.encodeIfPresent(cookie, forKey: "cookie")
  }
}
