// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics {
  public var activeDeviceCounts: ActiveDeviceCounts {
    ActiveDeviceCounts(path: path + "/active_device_counts")
  }

  public struct ActiveDeviceCounts {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/active_device_counts`
    public let path: String

    /// Count of active devices by interval in the time range.
    public func get(parameters: GetParameters) -> Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "Analytics_DeviceCounts")
    }

    public struct GetParameters {
      public var start: Date
      public var end: Date?
      public var versions: [String]?
      public var appBuild: String?

      public init(start: Date, end: Date? = nil, versions: [String]? = nil, appBuild: String? = nil) {
        self.start = start
        self.end = end
        self.versions = versions
        self.appBuild = appBuild
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(start, forKey: "start")
        encoder.encode(end, forKey: "end")
        encoder.encode(versions, forKey: "versions", explode: false, delimiter: "|")
        encoder.encode(appBuild, forKey: "app_build")
        return encoder.items
      }
    }
  }
}
