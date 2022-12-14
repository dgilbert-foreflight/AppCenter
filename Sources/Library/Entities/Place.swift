// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The place code and the count.
public struct Place: Codable {
  /// The place code.
  public var code: String?
  /// The count of the this place.
  public var count: Int64?
  /// The count of previous time range of the place.
  public var previousCount: Int64?

  public init(code: String? = nil, count: Int64? = nil, previousCount: Int64? = nil) {
    self.code = code
    self.count = count
    self.previousCount = previousCount
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.code = try values.decodeIfPresent(String.self, forKey: "code")
    self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
    self.previousCount = try values.decodeIfPresent(Int64.self, forKey: "previous_count")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(code, forKey: "code")
    try values.encodeIfPresent(count, forKey: "count")
    try values.encodeIfPresent(previousCount, forKey: "previous_count")
  }
}
