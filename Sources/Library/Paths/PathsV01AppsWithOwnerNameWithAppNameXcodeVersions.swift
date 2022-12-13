// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var xcodeVersions: XcodeVersions {
    XcodeVersions(path: path + "/xcode_versions")
  }

  public struct XcodeVersions {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/xcode_versions`
    public let path: String

    /// Gets the Xcode versions available to this app
    @available(*, deprecated, message: "Deprecated")
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "builds_listXcodeVersions")
    }

    /// The Xcode version
    public struct GetResponseItem: Decodable {
      /// The version name
      public var name: String?
      /// If the Xcode is latest stable
      public var isCurrent: Bool?

      public init(name: String? = nil, isCurrent: Bool? = nil) {
        self.name = name
        self.isCurrent = isCurrent
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.isCurrent = try values.decodeIfPresent(Bool.self, forKey: "current")
      }
    }
  }
}
