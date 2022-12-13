// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Test flight group details for the app.
public struct AppleTestFlightGroupResponse: Codable, Identifiable {
  /// Id of the group.
  public var id: String?
  /// Provider id of the group.
  public var providerID: Double?
  /// Apple id of the group.
  public var appAdamID: Double?
  /// Name of the group.
  public var name: String?
  /// True if group is in active state.
  public var isActive: Bool?
  /// True if the group is an internal group.
  public var isInternalGroup: Bool?

  public init(id: String? = nil, providerID: Double? = nil, appAdamID: Double? = nil, name: String? = nil, isActive: Bool? = nil, isInternalGroup: Bool? = nil) {
    self.id = id
    self.providerID = providerID
    self.appAdamID = appAdamID
    self.name = name
    self.isActive = isActive
    self.isInternalGroup = isInternalGroup
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(String.self, forKey: "id")
    self.providerID = try values.decodeIfPresent(Double.self, forKey: "providerId")
    self.appAdamID = try values.decodeIfPresent(Double.self, forKey: "appAdamId")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.isActive = try values.decodeIfPresent(Bool.self, forKey: "active")
    self.isInternalGroup = try values.decodeIfPresent(Bool.self, forKey: "isInternalGroup")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(providerID, forKey: "providerId")
    try values.encodeIfPresent(appAdamID, forKey: "appAdamId")
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(isActive, forKey: "active")
    try values.encodeIfPresent(isInternalGroup, forKey: "isInternalGroup")
  }
}