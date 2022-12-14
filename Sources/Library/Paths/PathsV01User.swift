// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API {
  public static var user: User {
    User(path: "/v0.1/user")
  }

  public struct User {
    /// Path: `/v0.1/user`
    public let path: String

    /// Returns the user profile data
    public var get: Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, id: "users_get")
    }

    /// Updates the user profile and returns the updated user data
    public func patch(displayName: String? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "PATCH", url: path, body: ["display_name": displayName], id: "users_update")
    }
  }
}
