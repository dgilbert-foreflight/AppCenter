// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Jira secret details
public struct JiraSecretDetails: Codable {
  /// BaseUrl to connect to jira instance
  public var baseURL: String
  /// Username to connect to jira instance
  public var username: String
  /// Password to connect to jira instance
  public var password: String

  public init(baseURL: String, username: String, password: String) {
    self.baseURL = baseURL
    self.username = username
    self.password = password
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.baseURL = try values.decode(String.self, forKey: "baseUrl")
    self.username = try values.decode(String.self, forKey: "username")
    self.password = try values.decode(String.self, forKey: "password")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(baseURL, forKey: "baseUrl")
    try values.encode(username, forKey: "username")
    try values.encode(password, forKey: "password")
  }
}
