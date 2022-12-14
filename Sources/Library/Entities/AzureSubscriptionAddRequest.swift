// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AzureSubscriptionAddRequest: Codable {
  /// The azure subscription id
  public var subscriptionID: UUID
  /// The tenant id of the azure subscription belongs to
  public var tenantID: UUID
  /// The name of the azure subscription
  public var subscriptionName: String
  /// If the subscription is used for billing
  public var isBilling: Bool?

  public init(subscriptionID: UUID, tenantID: UUID, subscriptionName: String, isBilling: Bool? = nil) {
    self.subscriptionID = subscriptionID
    self.tenantID = tenantID
    self.subscriptionName = subscriptionName
    self.isBilling = isBilling
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.subscriptionID = try values.decode(UUID.self, forKey: "subscription_id")
    self.tenantID = try values.decode(UUID.self, forKey: "tenant_id")
    self.subscriptionName = try values.decode(String.self, forKey: "subscription_name")
    self.isBilling = try values.decodeIfPresent(Bool.self, forKey: "is_billing")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(subscriptionID, forKey: "subscription_id")
    try values.encode(tenantID, forKey: "tenant_id")
    try values.encode(subscriptionName, forKey: "subscription_name")
    try values.encodeIfPresent(isBilling, forKey: "is_billing")
  }
}
