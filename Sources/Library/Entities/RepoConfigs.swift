// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct RepoConfigsItem: Codable, Identifiable {
  /// Repository configuration identifier
  public var id: String
  /// Type of repository
  public var type: String
  /// State of the configuration
  public var state: State
  /// Email of the user who linked the repository
  public var userEmail: String?

  /// State of the configuration
  public enum State: String, Codable, CaseIterable {
    case unauthorized
    case inactive
    case active
  }

  public init(id: String, type: String, state: State, userEmail: String? = nil) {
    self.id = id
    self.type = type
    self.state = state
    self.userEmail = userEmail
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(String.self, forKey: "id")
    self.type = try values.decode(String.self, forKey: "type")
    self.state = try values.decode(State.self, forKey: "state")
    self.userEmail = try values.decodeIfPresent(String.self, forKey: "user_email")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(type, forKey: "type")
    try values.encode(state, forKey: "state")
    try values.encodeIfPresent(userEmail, forKey: "user_email")
  }
}
