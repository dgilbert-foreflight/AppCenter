// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public {
  public var sparkle: Sparkle {
    Sparkle(path: path + "/sparkle")
  }

  public struct Sparkle {
    /// Path: `/v0.1/public/sparkle`
    public let path: String
  }
}
