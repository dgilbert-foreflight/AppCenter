// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The GitHub Installation
public struct GitHubAccountLite: Codable, Identifiable {
  /// GitHub Account Id
  public var id: String?
  /// GitHub Account Login Name
  public var login: String?
  /// GitHub Account Type
  public var type: String?
  /// GitHub Account Url
  public var url: String?

  public init(id: String? = nil, login: String? = nil, type: String? = nil, url: String? = nil) {
    self.id = id
    self.login = login
    self.type = type
    self.url = url
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(String.self, forKey: "id")
    self.login = try values.decodeIfPresent(String.self, forKey: "login")
    self.type = try values.decodeIfPresent(String.self, forKey: "type")
    self.url = try values.decodeIfPresent(String.self, forKey: "url")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(login, forKey: "login")
    try values.encodeIfPresent(type, forKey: "type")
    try values.encodeIfPresent(url, forKey: "url")
  }
}
