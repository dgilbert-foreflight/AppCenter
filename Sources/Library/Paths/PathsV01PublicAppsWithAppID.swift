// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public.Apps {
  public func appID(_ appID: String) -> WithAppID {
    WithAppID(path: "\(path)/\(appID)")
  }

  public struct WithAppID {
    /// Path: `/v0.1/public/apps/{app_id}`
    public let path: String
  }
}
