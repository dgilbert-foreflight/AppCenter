// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.CrashGroups.WithCrashGroupID {
  public var crashes: Crashes {
    Crashes(path: path + "/crashes")
  }

  public struct Crashes {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/crash_groups/{crash_group_id}/crashes`
    public let path: String

    /// Gets all crashes of a group.
    @available(*, deprecated, message: "Deprecated")
    public func get(parameters: GetParameters? = nil) -> Request<[AppCenter.Crash]> {
      Request(method: "GET", url: path, query: parameters?.asQuery, id: "crashes_list")
    }

    public struct GetParameters {
      public var isIncludeReport: Bool?
      public var isIncludeLog: Bool?
      public var dateFrom: Date?
      public var dateTo: Date?
      public var appVersion: String?
      public var errorType: ErrorType?

      public enum ErrorType: String, Codable, CaseIterable {
        case crashingErrors = "CrashingErrors"
        case handledErrors = "HandledErrors"
      }

      public init(isIncludeReport: Bool? = nil, isIncludeLog: Bool? = nil, dateFrom: Date? = nil, dateTo: Date? = nil, appVersion: String? = nil, errorType: ErrorType? = nil) {
        self.isIncludeReport = isIncludeReport
        self.isIncludeLog = isIncludeLog
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.appVersion = appVersion
        self.errorType = errorType
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(isIncludeReport, forKey: "include_report")
        encoder.encode(isIncludeLog, forKey: "include_log")
        encoder.encode(dateFrom, forKey: "date_from")
        encoder.encode(dateTo, forKey: "date_to")
        encoder.encode(appVersion, forKey: "app_version")
        encoder.encode(errorType, forKey: "error_type")
        return encoder.items
      }
    }
  }
}