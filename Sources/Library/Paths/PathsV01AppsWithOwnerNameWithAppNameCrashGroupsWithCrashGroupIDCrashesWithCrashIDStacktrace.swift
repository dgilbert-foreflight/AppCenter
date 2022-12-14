// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.CrashGroups.WithCrashGroupID.Crashes.WithCrashID {
  public var stacktrace: Stacktrace {
    Stacktrace(path: path + "/stacktrace")
  }

  public struct Stacktrace {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/crash_groups/{crash_group_id}/crashes/{crash_id}/stacktrace`
    public let path: String

    /// Gets a stacktrace for a specific crash.
    @available(*, deprecated, message: "Deprecated")
    public func get(isGroupingOnly: Bool? = nil) -> Request<AppCenter.Stacktrace> {
      Request(method: "GET", url: path, query: makeGetQuery(isGroupingOnly), id: "crashes_getStacktrace")
    }

    private func makeGetQuery(_ isGroupingOnly: Bool?) -> [(String, String?)] {
      let encoder = URLQueryEncoder()
      encoder.encode(isGroupingOnly, forKey: "grouping_only")
      return encoder.items
    }
  }
}
