// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.User {
  public var export: Export {
    Export(path: path + "/export")
  }

  public struct Export {
    /// Path: `/v0.1/user/export`
    public let path: String
  }
}
