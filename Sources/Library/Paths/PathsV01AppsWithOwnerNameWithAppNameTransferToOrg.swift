// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var transferToOrg: TransferToOrg {
    TransferToOrg(path: path + "/transfer_to_org")
  }

  public struct TransferToOrg {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/transfer_to_org`
    public let path: String

    /// Transfers ownership of an app to a new organization
    public func post(_ body: [String: AnyJSON]? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "apps_transferToOrg")
    }
  }
}