// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BuildLog: Codable {
  public var value: [String]?

  public init(value: [String]? = nil) {
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.value = try values.decodeIfPresent([String].self, forKey: "value")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(value, forKey: "value")
  }
}
