// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GetOrCreateRepositoryProviderMappingRequest: Codable {
  /// The account name given by the external provider. If provided, create an organization and the mapping. If not, create mapping with user.
  public var externalAccountName: String?

  public init(externalAccountName: String? = nil) {
    self.externalAccountName = externalAccountName
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.externalAccountName = try values.decodeIfPresent(String.self, forKey: "external_account_name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(externalAccountName, forKey: "external_account_name")
  }
}
