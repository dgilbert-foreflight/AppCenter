// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// ReleasePublishErrorResponse
public struct ReleasePublishErrorResponse: Codable {
  /// Error Details
  public var message: String?
  /// Boolean property to tell if logs are available for download
  public var isLogAvailable: Bool?

  public init(message: String? = nil, isLogAvailable: Bool? = nil) {
    self.message = message
    self.isLogAvailable = isLogAvailable
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.message = try values.decodeIfPresent(String.self, forKey: "message")
    self.isLogAvailable = try values.decodeIfPresent(Bool.self, forKey: "is_log_available")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(message, forKey: "message")
    try values.encodeIfPresent(isLogAvailable, forKey: "is_log_available")
  }
}
