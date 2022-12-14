// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TeamAppUpdateRequest: Codable {
  /// The permissions all members of the team have on the app
  public var permissions: [Permission]

  public enum Permission: String, Codable, CaseIterable {
    case manager
    case developer
    case viewer
  }

  public init(permissions: [Permission]) {
    self.permissions = permissions
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.permissions = try values.decode([Permission].self, forKey: "permissions")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(permissions, forKey: "permissions")
  }
}
