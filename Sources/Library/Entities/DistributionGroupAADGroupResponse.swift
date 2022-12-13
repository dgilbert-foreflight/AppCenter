// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DistributionGroupAADGroupResponse: Codable, Identifiable {
  /// The internal unique id (UUID) of the AAD group.
  public var id: UUID?
  /// The AAD unique id (UUID) of the AAD group.
  public var aadGroupID: UUID?
  /// The display name of the AAD group
  public var displayName: String?
  public var isAadGroup: Bool?
  /// The distribution group of the AAD group
  public var distributionGroupName: String?

  public init(id: UUID? = nil, aadGroupID: UUID? = nil, displayName: String? = nil, isAadGroup: Bool? = nil, distributionGroupName: String? = nil) {
    self.id = id
    self.aadGroupID = aadGroupID
    self.displayName = displayName
    self.isAadGroup = isAadGroup
    self.distributionGroupName = distributionGroupName
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(UUID.self, forKey: "id")
    self.aadGroupID = try values.decodeIfPresent(UUID.self, forKey: "aad_group_id")
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
    self.isAadGroup = try values.decodeIfPresent(Bool.self, forKey: "is_aad_group")
    self.distributionGroupName = try values.decodeIfPresent(String.self, forKey: "distribution_group_name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(aadGroupID, forKey: "aad_group_id")
    try values.encodeIfPresent(displayName, forKey: "display_name")
    try values.encodeIfPresent(isAadGroup, forKey: "is_aad_group")
    try values.encodeIfPresent(distributionGroupName, forKey: "distribution_group_name")
  }
}