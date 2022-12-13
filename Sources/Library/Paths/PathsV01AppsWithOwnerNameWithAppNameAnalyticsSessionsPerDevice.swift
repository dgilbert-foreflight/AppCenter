// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics {
  public var sessionsPerDevice: SessionsPerDevice {
    SessionsPerDevice(path: path + "/sessions_per_device")
  }

  public struct SessionsPerDevice {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/sessions_per_device`
    public let path: String

    /// Count of sessions per device in the time range.
    public func get(parameters: GetParameters) -> Request<GetResponse> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "Analytics_PerDeviceCounts")
    }

    public struct GetResponse: Decodable {
      /// Average seesion per user.
      public var averageSessionsPerUser: Double?
      /// Previous average session per user.
      public var previousAverageSessionsPerUser: Double?
      /// Total session per device count.
      public var totalCount: Int64?
      /// Previous total count.
      public var previousTotalCount: Int64?
      /// The session count for each interval per device.
      public var sessionsPerUser: [SessionsPerUserItem]?

      public struct SessionsPerUserItem: Decodable {
        /// The ISO 8601 datetime.
        public var datetime: String?
        /// Count.
        public var count: Double?

        public init(datetime: String? = nil, count: Double? = nil) {
          self.datetime = datetime
          self.count = count
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.datetime = try values.decodeIfPresent(String.self, forKey: "datetime")
          self.count = try values.decodeIfPresent(Double.self, forKey: "count")
        }
      }

      public init(averageSessionsPerUser: Double? = nil, previousAverageSessionsPerUser: Double? = nil, totalCount: Int64? = nil, previousTotalCount: Int64? = nil, sessionsPerUser: [SessionsPerUserItem]? = nil) {
        self.averageSessionsPerUser = averageSessionsPerUser
        self.previousAverageSessionsPerUser = previousAverageSessionsPerUser
        self.totalCount = totalCount
        self.previousTotalCount = previousTotalCount
        self.sessionsPerUser = sessionsPerUser
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.averageSessionsPerUser = try values.decodeIfPresent(Double.self, forKey: "average_sessions_per_user")
        self.previousAverageSessionsPerUser = try values.decodeIfPresent(Double.self, forKey: "previous_average_sessions_per_user")
        self.totalCount = try values.decodeIfPresent(Int64.self, forKey: "total_count")
        self.previousTotalCount = try values.decodeIfPresent(Int64.self, forKey: "previous_total_count")
        self.sessionsPerUser = try values.decodeIfPresent([SessionsPerUserItem].self, forKey: "sessions_per_user")
      }
    }

    public struct GetParameters {
      public var start: Date
      public var end: Date?
      public var versions: [String]?

      public init(start: Date, end: Date? = nil, versions: [String]? = nil) {
        self.start = start
        self.end = end
        self.versions = versions
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(start, forKey: "start")
        encoder.encode(end, forKey: "end")
        encoder.encode(versions, forKey: "versions", explode: false, delimiter: "|")
        return encoder.items
      }
    }
  }
}
