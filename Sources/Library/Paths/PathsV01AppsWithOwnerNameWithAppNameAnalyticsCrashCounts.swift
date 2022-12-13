// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics {
  public var crashCounts: CrashCounts {
    CrashCounts(path: path + "/crash_counts")
  }

  public struct CrashCounts {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/crash_counts`
    public let path: String

    /// Available for UWP apps only.
    ///
    /// Count of crashes by day in the time range based the selected versions. Available for UWP apps only.
    @available(*, deprecated, message: "Deprecated")
    public func get(parameters: GetParameters) -> Request<GetResponse> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "Analytics_CrashCounts")
    }

    public struct GetResponse: Decodable {
      /// Total crash count.
      public var count: Int64?
      /// The total crash count for day.
      public var crashes: [Crash]?

      public struct Crash: Decodable {
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