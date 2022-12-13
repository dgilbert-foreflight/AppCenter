// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Details of a failed operation
public struct TestCloudErrorDetails: Codable {
  /// Status of the operation
  public var status: String
  /// Human-readable message that describes the error
  public var message: String

  public init(status: String, message: String) {
    self.status = status
    self.message = message
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.status = try values.decode(String.self, forKey: "status")
    self.message = try values.decode(String.self, forKey: "message")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(status, forKey: "status")
    try values.encode(message, forKey: "message")
  }
}
