// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics {
  public var distribution: Distribution {
    Distribution(path: path + "/distribution")
  }

  public struct Distribution {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/distribution`
    public let path: String
  }
}
