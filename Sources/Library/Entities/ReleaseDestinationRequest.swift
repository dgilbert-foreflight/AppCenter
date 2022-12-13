// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ReleaseDestinationRequest: Codable, Identifiable {
  /// Unique id of the release destination
  public var id: UUID
  /// Flag to mark the release for the provided destinations as mandatory
  public var isMandatoryUpdate: Bool?
  /// Flag to enable or disable notifications to testers
  public var isNotifyTesters: Bool

  public init(id: UUID, isMandatoryUpdate: Bool? = nil, isNotifyTesters: Bool? = nil) {
    self.id = id
    self.isMandatoryUpdate = isMandatoryUpdate
    self.isNotifyTesters = isNotifyTesters ?? true
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(UUID.self, forKey: "id")
    self.isMandatoryUpdate = try values.decodeIfPresent(Bool.self, forKey: "mandatory_update")
    self.isNotifyTesters = try values.decodeIfPresent(Bool.self, forKey: "notify_testers") ?? true
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encodeIfPresent(isMandatoryUpdate, forKey: "mandatory_update")
    try values.encodeIfPresent(isNotifyTesters, forKey: "notify_testers")
  }
}
