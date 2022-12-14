// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Alerting webhook ping operation result
public struct AlertWebhookPingResult: Codable {
  /// Unique request identifier for tracking
  public var requestID: String
  /// HTTP status code returned in response from calling webhook
  public var responseStatusCode: Int
  /// Reason returned in response from calling webhook
  public var responseReason: String?

  public init(requestID: String, responseStatusCode: Int, responseReason: String? = nil) {
    self.requestID = requestID
    self.responseStatusCode = responseStatusCode
    self.responseReason = responseReason
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.requestID = try values.decode(String.self, forKey: "request_id")
    self.responseStatusCode = try values.decode(Int.self, forKey: "response_status_code")
    self.responseReason = try values.decodeIfPresent(String.self, forKey: "response_reason")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(requestID, forKey: "request_id")
    try values.encode(responseStatusCode, forKey: "response_status_code")
    try values.encodeIfPresent(responseReason, forKey: "response_reason")
  }
}
