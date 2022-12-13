// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct StorePatchRequest: Codable {
  /// Service connection id to updated.
  public var serviceConnectionID: String

  public init(serviceConnectionID: String) {
    self.serviceConnectionID = serviceConnectionID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.serviceConnectionID = try values.decode(String.self, forKey: "service_connection_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(serviceConnectionID, forKey: "service_connection_id")
  }
}
