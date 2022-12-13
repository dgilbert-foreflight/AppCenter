// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var user: User {
    User(path: path + "/user")
  }

  public struct User {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/user`
    public let path: String
  }
}