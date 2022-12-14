// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Branches {
  public func branch(_ branch: String) -> WithBranch {
    WithBranch(path: "\(path)/\(branch)")
  }

  public struct WithBranch {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/branches/{branch}`
    public let path: String
  }
}
