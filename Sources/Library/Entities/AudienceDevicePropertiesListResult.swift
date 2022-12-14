// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// List of device properties.
public struct AudienceDevicePropertiesListResult: Codable {
  /// List of device properties.
  public var values: [String: Value]

  /// Type of the property.
  public enum Value: String, Codable, CaseIterable {
    case string
    case number
    case boolean
    case dateTime = "date_time"
  }

  public init(values: [String: Value]) {
    self.values = values
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.values = try values.decode([String: Value].self, forKey: "values")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(self.values, forKey: "values")
  }
}
