// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Sdk.Apps.WithAppSecret.Releases.Private {
  public var latest: Latest {
    Latest(path: path + "/latest")
  }

  public struct Latest {
    /// Path: `/v0.1/sdk/apps/{app_secret}/releases/private/latest`
    public let path: String

    /// Get the latest release distributed to a private group the given user is a member of for the given app.
    public func get(udid: String? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, query: makeGetQuery(udid), id: "releases_getLatestPrivateRelease")
    }

    private func makeGetQuery(_ udid: String?) -> [(String, String?)] {
      let encoder = URLQueryEncoder()
      encoder.encode(udid, forKey: "udid")
      return encoder.items
    }
  }
}
