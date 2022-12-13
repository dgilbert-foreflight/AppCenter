// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct UserUpdateRequest: Codable {
  /// The full name of the user. Might for example be first and last name
  public var displayName: String?

  public init(displayName: String? = nil) {
    self.displayName = displayName
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(displayName, forKey: "display_name")
  }
}