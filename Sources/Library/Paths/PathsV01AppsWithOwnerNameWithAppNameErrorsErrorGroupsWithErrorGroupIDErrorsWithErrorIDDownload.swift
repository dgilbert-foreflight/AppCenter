// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Errors.ErrorGroups.WithErrorGroupID.Errors.WithErrorID {
  public var download: Download {
    Download(path: path + "/download")
  }

  public struct Download {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/errors/errorGroups/{errorGroupId}/errors/{errorId}/download`
    public let path: String

    /// Download details for a specific error.
    public func get(format: Format? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, query: makeGetQuery(format), id: "Errors_ErrorDownload")
    }

    private func makeGetQuery(_ format: Format?) -> [(String, String?)] {
      let encoder = URLQueryEncoder()
      encoder.encode(format, forKey: "format")
      return encoder.items
    }

    public enum Format: String, Codable, CaseIterable {
      case json
      case txt
    }
  }
}