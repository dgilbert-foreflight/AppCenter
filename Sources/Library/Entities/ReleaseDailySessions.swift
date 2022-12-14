// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ReleaseDailySessions: Codable {
  public var totalSessionCounts: Int64?
  public var avgSessionsPerDay: Double?
  /// Sessions per day.
  public var sessions: [Session]?

  public struct Session: Codable {
    /// The ISO 8601 datetime.
    public var datetime: String?
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

  public init(totalSessionCounts: Int64? = nil, avgSessionsPerDay: Double? = nil, sessions: [Session]? = nil) {
    self.totalSessionCounts = totalSessionCounts
    self.avgSessionsPerDay = avgSessionsPerDay
    self.sessions = sessions
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.totalSessionCounts = try values.decodeIfPresent(Int64.self, forKey: "totalSessionCounts")
    self.avgSessionsPerDay = try values.decodeIfPresent(Double.self, forKey: "avgSessionsPerDay")
    self.sessions = try values.decodeIfPresent([Session].self, forKey: "sessions")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(totalSessionCounts, forKey: "totalSessionCounts")
    try values.encodeIfPresent(avgSessionsPerDay, forKey: "avgSessionsPerDay")
    try values.encodeIfPresent(sessions, forKey: "sessions")
  }
}
