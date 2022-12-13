// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.User {
  public var metadata: Metadata {
    Metadata(path: path + "/metadata")
  }

  public struct Metadata {
    /// Path: `/v0.1/user/metadata`
    public let path: String
  }
}
