// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Users {
  public func userID(_ userID: String) -> WithUserID {
    WithUserID(path: "\(path)/\(userID)")
  }

  public struct WithUserID {
    /// Path: `/v0.1/users/{user_id}`
    public let path: String
  }
}
