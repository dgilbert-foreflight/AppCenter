// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionGroupAADGroupPostResponse: Codable, Identifiable {
  /// The internal unique id (UUID) of the AAD group.
  public var id: UUID?
  /// The AAD unique id (UUID) of the AAD group.
  public var aadGroupID: UUID?
  /// The display name of the AAD group
  public var displayName: String?

  public init(id: UUID? = nil, aadGroupID: UUID? = nil, displayName: String? = nil) {
    self.id = id
    self.aadGroupID = aadGroupID
    self.displayName = displayName
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(UUID.self, forKey: "id")
    self.aadGroupID = try values.decodeIfPresent(UUID.self, forKey: "aad_group_id")
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(aadGroupID, forKey: "aad_group_id")
    try values.encodeIfPresent(displayName, forKey: "display_name")
  }
}
