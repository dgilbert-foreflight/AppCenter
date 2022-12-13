// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// CPU data for device
public struct DeviceCpu: Codable {
  public var frequency: String?
  public var core: String?
  public var text: String?

  public init(frequency: String? = nil, core: String? = nil, text: String? = nil) {
    self.frequency = frequency
    self.core = core
    self.text = text
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.frequency = try values.decodeIfPresent(String.self, forKey: "frequency")
    self.core = try values.decodeIfPresent(String.self, forKey: "core")
    self.text = try values.decodeIfPresent(String.self, forKey: "text")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(frequency, forKey: "frequency")
    try values.encodeIfPresent(core, forKey: "core")
    try values.encodeIfPresent(text, forKey: "text")
  }
}
