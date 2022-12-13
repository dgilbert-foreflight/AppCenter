// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IdentityProvidersListManagemant: Codable {
  /// Creation date-time
  public var createdAt: String?
  /// Last update date-time
  public var updatedAt: String?
  /// The account id (UUID)
  public var userID: String?
  /// The name of the identity provider type
  public var providerName: ProviderName?
  /// The external user id
  public var providerUserID: String?

  /// The name of the identity provider type
  public enum ProviderName: String, Codable, CaseIterable {
    case github
    case aad
    case facebook
    case google
  }

  public init(createdAt: String? = nil, updatedAt: String? = nil, userID: String? = nil, providerName: ProviderName? = nil, providerUserID: String? = nil) {
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.userID = userID
    self.providerName = providerName
    self.providerUserID = providerUserID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.createdAt = try values.decodeIfPresent(String.self, forKey: "created_at")
    self.updatedAt = try values.decodeIfPresent(String.self, forKey: "updated_at")
    self.userID = try values.decodeIfPresent(String.self, forKey: "user_id")
    self.providerName = try values.decodeIfPresent(ProviderName.self, forKey: "provider_name")
    self.providerUserID = try values.decodeIfPresent(String.self, forKey: "provider_user_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(createdAt, forKey: "created_at")
    try values.encodeIfPresent(updatedAt, forKey: "updated_at")
    try values.encodeIfPresent(userID, forKey: "user_id")
    try values.encodeIfPresent(providerName, forKey: "provider_name")
    try values.encodeIfPresent(providerUserID, forKey: "provider_user_id")
  }
}