// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var transfer: Transfer {
    Transfer(path: path + "/transfer")
  }

  public struct Transfer {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/transfer`
    public let path: String
  }
}
