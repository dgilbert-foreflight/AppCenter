// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName {
  public var avatar: Avatar {
    Avatar(path: path + "/avatar")
  }

  public struct Avatar {
    /// Path: `/v0.1/orgs/{org_name}/avatar`
    public let path: String

    /// Sets the organization avatar
    public func post(_ body: Data? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "organization_updateAvatar")
    }

    /// Deletes the uploaded organization avatar
    public var delete: Request<[String: AnyJSON]> {
      Request(method: "DELETE", url: path, id: "organization_deleteAvatar")
    }
  }
}
