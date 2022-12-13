// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DateTimePercentages: Codable {
  /// The ISO 8601 datetime.
  public var datetime: String?
  /// Percentage of the object.
  public var percentage: Double?

  public init(datetime: String? = nil, percentage: Double? = nil) {
    self.datetime = datetime
    self.percentage = percentage
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.datetime = try values.decodeIfPresent(String.self, forKey: "datetime")
    self.percentage = try values.decodeIfPresent(Double.self, forKey: "percentage")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(datetime, forKey: "datetime")
    try values.encodeIfPresent(percentage, forKey: "percentage")
  }
}
