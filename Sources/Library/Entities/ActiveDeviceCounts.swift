// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ActiveDeviceCounts: Codable {
  /// The active device count for each interval.
  public var daily: [DailyItem]?
  /// The active device count for each interval with a week's retention.
  public var weekly: [WeeklyItem]?
  /// The active device count for each interval with a month's retention.
  public var monthly: [MonthlyItem]?

  public struct DailyItem: Codable {
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

  public struct WeeklyItem: Codable {
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

  public struct MonthlyItem: Codable {
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

  public init(daily: [DailyItem]? = nil, weekly: [WeeklyItem]? = nil, monthly: [MonthlyItem]? = nil) {
    self.daily = daily
    self.weekly = weekly
    self.monthly = monthly
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.daily = try values.decodeIfPresent([DailyItem].self, forKey: "daily")
    self.weekly = try values.decodeIfPresent([WeeklyItem].self, forKey: "weekly")
    self.monthly = try values.decodeIfPresent([MonthlyItem].self, forKey: "monthly")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(daily, forKey: "daily")
    try values.encodeIfPresent(weekly, forKey: "weekly")
    try values.encodeIfPresent(monthly, forKey: "monthly")
  }
}
