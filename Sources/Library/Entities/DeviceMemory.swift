// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Memory data for device
public struct DeviceMemory: Codable {
  public var formattedSize: String?

  public init(formattedSize: String? = nil) {
    self.formattedSize = formattedSize
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.formattedSize = try values.decodeIfPresent(String.self, forKey: "formattedSize")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(formattedSize, forKey: "formattedSize")
  }
}
