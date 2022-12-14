// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var fileAsset: FileAsset {
    FileAsset(path: path + "/file_asset")
  }

  public struct FileAsset {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/file_asset`
    public let path: String

    /// Create a new asset to upload a file
    public func post(_ body: [String: AnyJSON]? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "fileAssets_create")
    }
  }
}
