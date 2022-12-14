// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AzureSubscriptionPatchRequest: Codable {
  /// If the subscription is used for billing
  public var isBilling: Bool

  public init(isBilling: Bool) {
    self.isBilling = isBilling
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isBilling = try values.decode(Bool.self, forKey: "is_billing")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(isBilling, forKey: "is_billing")
  }
}
