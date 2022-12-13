// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics {
  public var oses: Oses {
    Oses(path: path + "/oses")
  }

  public struct Oses {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/oses`
    public let path: String

    /// OSes in the time range.
    public func get(parameters: GetParameters) -> Request<GetResponse> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "Analytics_OperatingSystemCounts")
    }

    public struct GetResponse: Decodable {
      public var total: Int64?
      public var oses: [Ose]?

      public struct Ose: Decodable {
        /// OS name.
        public var osName: String?
        /// Count current of OS.
        public var count: Int64?
        /// Count of previous OS.
        public var previousCount: Int64?

        public init(osName: String? = nil, count: Int64? = nil, previousCount: Int64? = nil) {
          self.osName = osName
          self.count = count
          self.previousCount = previousCount
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.osName = try values.decodeIfPresent(String.self, forKey: "os_name")
          self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
          self.previousCount = try values.decodeIfPresent(Int64.self, forKey: "previous_count")
        }
      }

      public init(total: Int64? = nil, oses: [Ose]? = nil) {
        self.total = total
        self.oses = oses
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.total = try values.decodeIfPresent(Int64.self, forKey: "total")
        self.oses = try values.decodeIfPresent([Ose].self, forKey: "oses")
      }
    }

    public struct GetParameters {
      public var start: Date
      public var end: Date?
      public var top: Int64?
      public var versions: [String]?

      public init(start: Date, end: Date? = nil, top: Int64? = nil, versions: [String]? = nil) {
        self.start = start
        self.end = end
        self.top = top
        self.versions = versions
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(start, forKey: "start")
        encoder.encode(end, forKey: "end")
        encoder.encode(top, forKey: "$top")
        encoder.encode(versions, forKey: "versions", explode: false, delimiter: "|")
        return encoder.items
      }
    }
  }
}