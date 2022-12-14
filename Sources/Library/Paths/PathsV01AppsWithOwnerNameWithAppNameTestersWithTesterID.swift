// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Testers {
  public func testerID(_ testerID: String) -> WithTesterID {
    WithTesterID(path: "\(path)/\(testerID)")
  }

  public struct WithTesterID {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/testers/{tester_id}`
    public let path: String

    /// Delete the given tester from the all releases
    public var delete: Request<Void> {
      Request(method: "DELETE", url: path, id: "releases_deleteTesterFromDestinations")
    }
  }
}
