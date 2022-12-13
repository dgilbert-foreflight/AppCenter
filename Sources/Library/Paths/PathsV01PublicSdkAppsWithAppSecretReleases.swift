// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public.Sdk.Apps.WithAppSecret {
  public var releases: Releases {
    Releases(path: path + "/releases")
  }

  public struct Releases {
    /// Path: `/v0.1/public/sdk/apps/{app_secret}/releases`
    public let path: String
  }
}
