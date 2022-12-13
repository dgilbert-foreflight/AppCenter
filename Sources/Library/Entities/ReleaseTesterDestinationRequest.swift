// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ReleaseTesterDestinationRequest: Codable {
  /// Flag to mark the release for the provided destinations as mandatory
  public var isMandatoryUpdate: Bool?
  /// Tester's email address
  public var email: String
  /// Flag to enable or disable notifications to testers
  public var isNotifyTesters: Bool

  public init(isMandatoryUpdate: Bool? = nil, email: String, isNotifyTesters: Bool? = nil) {
    self.isMandatoryUpdate = isMandatoryUpdate
    self.email = email
    self.isNotifyTesters = isNotifyTesters ?? true
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isMandatoryUpdate = try values.decodeIfPresent(Bool.self, forKey: "mandatory_update")
    self.email = try values.decode(String.self, forKey: "email")
    self.isNotifyTesters = try values.decodeIfPresent(Bool.self, forKey: "notify_testers") ?? true
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(isMandatoryUpdate, forKey: "mandatory_update")
    try values.encode(email, forKey: "email")
    try values.encodeIfPresent(isNotifyTesters, forKey: "notify_testers")
  }
}
