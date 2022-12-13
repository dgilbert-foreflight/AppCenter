// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Response for provisioning a release
public struct ReleaseProvisionResponse: Codable {
  /// The url to check provisioning status.
  public var statusURL: String?

  public init(statusURL: String? = nil) {
    self.statusURL = statusURL
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.statusURL = try values.decodeIfPresent(String.self, forKey: "status_url")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(statusURL, forKey: "status_url")
  }
}
