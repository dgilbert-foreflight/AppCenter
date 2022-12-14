// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AADTenantResponse: Codable {
  /// The AAD tenant id
  public var aadTenantID: UUID
  /// The name of the AAD Tenant
  public var displayName: String

  public init(aadTenantID: UUID, displayName: String) {
    self.aadTenantID = aadTenantID
    self.displayName = displayName
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.aadTenantID = try values.decode(UUID.self, forKey: "aad_tenant_id")
    self.displayName = try values.decode(String.self, forKey: "display_name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(aadTenantID, forKey: "aad_tenant_id")
    try values.encode(displayName, forKey: "display_name")
  }
}
