// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Crashes {
  public func crashID(_ crashID: String) -> WithCrashID {
    WithCrashID(path: "\(path)/\(crashID)")
  }

  public struct WithCrashID {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/crashes/{crash_id}`
    public let path: String
  }
}
