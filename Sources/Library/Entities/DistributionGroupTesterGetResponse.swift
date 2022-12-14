// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionGroupTesterGetResponse: Codable {
  /// The full name of the tester. Might for example be first and last name
  public var displayName: String?
  /// The unique name that is used to identify the tester.
  public var name: String
  /// The email address of the tester
  public var email: String

  public init(displayName: String? = nil, name: String, email: String) {
    self.displayName = displayName
    self.name = name
    self.email = email
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
    self.name = try values.decode(String.self, forKey: "name")
    self.email = try values.decode(String.self, forKey: "email")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(displayName, forKey: "display_name")
    try values.encode(name, forKey: "name")
    try values.encode(email, forKey: "email")
  }
}
