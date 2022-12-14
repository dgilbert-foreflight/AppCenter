// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashCounts: Codable {
  /// Total crash count.
  public var count: Int64?
  /// The total crash count for day.
  public var crashes: [Crash]?

  public struct Crash: Codable {
    /// The ISO 8601 datetime.
    public var datetime: String?
    /// Count of the object.
    public var count: Int64?

    public init(datetime: String? = nil, count: Int64? = nil) {
      self.datetime = datetime
      self.count = count
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.datetime = try values.decodeIfPresent(String.self, forKey: "datetime")
      self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(datetime, forKey: "datetime")
      try values.encodeIfPresent(count, forKey: "count")
    }
  }

  public init(count: Int64? = nil, crashes: [Crash]? = nil) {
    self.count = count
    self.crashes = crashes
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
    self.crashes = try values.decodeIfPresent([Crash].self, forKey: "crashes")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(count, forKey: "count")
    try values.encodeIfPresent(crashes, forKey: "crashes")
  }
}
