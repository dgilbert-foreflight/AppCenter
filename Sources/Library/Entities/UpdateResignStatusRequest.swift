// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Updates the status of the resign request
public struct UpdateResignStatusRequest: Codable {
  /// The updated status for the resigning request.
  public var status: String
  /// Error code if an error occured in the resigning operation.
  public var errorCode: String?
  /// Error message if an error occured in the resigning operation.
  public var errorMessage: String?
  /// ReleaseMetadata from ios resigner extractor
  public var releaseMetadata: [String: AnyJSON]?

  public init(status: String, errorCode: String? = nil, errorMessage: String? = nil, releaseMetadata: [String: AnyJSON]? = nil) {
    self.status = status
    self.errorCode = errorCode
    self.errorMessage = errorMessage
    self.releaseMetadata = releaseMetadata
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.status = try values.decode(String.self, forKey: "status")
    self.errorCode = try values.decodeIfPresent(String.self, forKey: "error_code")
    self.errorMessage = try values.decodeIfPresent(String.self, forKey: "error_message")
    self.releaseMetadata = try values.decodeIfPresent([String: AnyJSON].self, forKey: "releaseMetadata")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(status, forKey: "status")
    try values.encodeIfPresent(errorCode, forKey: "error_code")
    try values.encodeIfPresent(errorMessage, forKey: "error_message")
    try values.encodeIfPresent(releaseMetadata, forKey: "releaseMetadata")
  }
}
