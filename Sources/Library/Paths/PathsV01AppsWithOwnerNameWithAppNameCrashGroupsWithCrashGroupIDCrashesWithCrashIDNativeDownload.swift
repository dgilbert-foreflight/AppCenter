// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.CrashGroups.WithCrashGroupID.Crashes.WithCrashID.Native {
  public var download: Download {
    Download(path: path + "/download")
  }

  public struct Download {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/crash_groups/{crash_group_id}/crashes/{crash_id}/native/download`
    public let path: String

    /// Gets the native log of a specific crash as a text attachment.
    @available(*, deprecated, message: "Deprecated")
    public var get: Request<String> {
      Request(method: "GET", url: path, id: "crashes_getNativeCrashDownload")
    }
  }
}
