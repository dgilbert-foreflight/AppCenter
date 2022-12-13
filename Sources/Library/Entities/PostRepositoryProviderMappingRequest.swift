// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PostRepositoryProviderMappingRequest: Codable {
  /// Id of user in the external provider service
  public var externalAccountID: String
  /// Supported external providers of source control repositories
  public var provider: Provider
  /// App Center account id to link to this provider and external id
  public var accountID: UUID

  /// Supported external providers of source control repositories
  public enum Provider: String, Codable, CaseIterable {
    case github
  }

  public init(externalAccountID: String, provider: Provider, accountID: UUID) {
    self.externalAccountID = externalAccountID
    self.provider = provider
    self.accountID = accountID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.externalAccountID = try values.decode(String.self, forKey: "external_account_id")
    self.provider = try values.decode(Provider.self, forKey: "provider")
    self.accountID = try values.decode(UUID.self, forKey: "account_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(externalAccountID, forKey: "external_account_id")
    try values.encode(provider, forKey: "provider")
    try values.encode(accountID, forKey: "account_id")
  }
}
