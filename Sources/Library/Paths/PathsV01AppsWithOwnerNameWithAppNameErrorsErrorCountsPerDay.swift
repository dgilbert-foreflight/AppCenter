// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Errors {
  public var errorCountsPerDay: ErrorCountsPerDay {
    ErrorCountsPerDay(path: path + "/errorCountsPerDay")
  }

  public struct ErrorCountsPerDay {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/errors/errorCountsPerDay`
    public let path: String

    /// Count of crashes or errors by day in the time range based the selected versions. If SingleErrorTypeParameter is not provided, defaults to handlederror.
    public func get(parameters: GetParameters) -> Request<GetResponse> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "Errors_CountsPerDay")
    }

    public struct GetResponse: Decodable {
      /// Total error count
      public var count: Int64?
      /// The total error count for day
      public var errors: [Error]?

      public struct Error: Decodable {
        /// The ISO 8601 datetime
        public var datetime: String?
        /// Count of the object
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

      public init(count: Int64? = nil, errors: [Error]? = nil) {
        self.count = count
        self.errors = errors
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
        self.errors = try values.decodeIfPresent([Error].self, forKey: "errors")
      }
    }

    public struct GetParameters {
      public var version: String?
      public var start: Date
      public var end: Date?
      public var appBuild: String?
      public var errorType: ErrorType?

      public enum ErrorType: String, Codable, CaseIterable {
        case unhandledError
        case handledError
      }

      public init(version: String? = nil, start: Date, end: Date? = nil, appBuild: String? = nil, errorType: ErrorType? = nil) {
        self.version = version
        self.start = start
        self.end = end
        self.appBuild = appBuild
        self.errorType = errorType
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(version, forKey: "version")
        encoder.encode(start, forKey: "start")
        encoder.encode(end, forKey: "end")
        encoder.encode(appBuild, forKey: "app_build")
        encoder.encode(errorType, forKey: "errorType")
        return encoder.items
      }
    }
  }
}
