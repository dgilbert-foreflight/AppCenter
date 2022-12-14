// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DataSubjectRightCustomerIDRequest: Codable {
  /// Customer account id (b2c identifier) / customer user id (free form text) depending on the value of the fied `type`
  public var dataSubjectIdentifier: String?
  /// Type of the customer dataSubjectIdentifier
  public var type: `Type`?

  /// Type of the customer dataSubjectIdentifier
  public enum `Type`: String, Codable, CaseIterable {
    case customerAccountID = "CustomerAccountId"
    case customerUserID = "CustomerUserId"
  }

  public init(dataSubjectIdentifier: String? = nil, type: `Type`? = nil) {
    self.dataSubjectIdentifier = dataSubjectIdentifier
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.dataSubjectIdentifier = try values.decodeIfPresent(String.self, forKey: "dataSubjectIdentifier")
    self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(dataSubjectIdentifier, forKey: "dataSubjectIdentifier")
    try values.encodeIfPresent(type, forKey: "type")
  }
}
