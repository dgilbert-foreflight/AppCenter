// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The status of the resign operation.
public struct ResignStatus: Codable {
  /// The status of the resign
  public var status: String
  /// Error code for any error that occured during the resigning operation.
  public var errorCode: String?
  /// Error message for any error that occured during the resigning operation.
  public var errorMessage: String?

  public init(status: String, errorCode: String? = nil, errorMessage: String? = nil) {
    self.status = status
    self.errorCode = errorCode
    self.errorMessage = errorMessage
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.status = try values.decode(String.self, forKey: "status")
    self.errorCode = try values.decodeIfPresent(String.self, forKey: "error_code")
    self.errorMessage = try values.decodeIfPresent(String.self, forKey: "error_message")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(status, forKey: "status")
    try values.encodeIfPresent(errorCode, forKey: "error_code")
    try values.encodeIfPresent(errorMessage, forKey: "error_message")
  }
}