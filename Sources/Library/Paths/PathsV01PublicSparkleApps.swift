// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public.Sparkle {
  public var apps: Apps {
    Apps(path: path + "/apps")
  }

  public struct Apps {
    /// Path: `/v0.1/public/sparkle/apps`
    public let path: String
  }
}