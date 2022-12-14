// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public.Sdk.Apps.WithAppSecret.Releases {
  public var latest: Latest {
    Latest(path: path + "/latest")
  }

  public struct Latest {
    /// Path: `/v0.1/public/sdk/apps/{app_secret}/releases/latest`
    public let path: String

    /// Get the latest public release for the given app.
    @available(*, deprecated, message: "Deprecated")
    public var get: Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, id: "releases_getLatestPublicRelease")
    }
  }
}
