// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var commits: Commits {
    Commits(path: path + "/commits")
  }

  public struct Commits {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/commits`
    public let path: String
  }
}
