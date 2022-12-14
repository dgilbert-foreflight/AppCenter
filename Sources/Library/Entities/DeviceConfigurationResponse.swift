// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A response containing the fully encoded binary blob for a mobileconfig
public struct DeviceConfigurationResponse: Codable {
  /// A data URL containing a signed mobileconfig profile
  public var dataURL: String

  public init(dataURL: String) {
    self.dataURL = dataURL
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.dataURL = try values.decode(String.self, forKey: "data_url")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(dataURL, forKey: "data_url")
  }
}
