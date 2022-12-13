// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Users {
  public func userEmail(_ userEmail: String) -> WithUserEmail {
    WithUserEmail(path: "\(path)/\(userEmail)")
  }

  public struct WithUserEmail {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/users/{user_email}`
    public let path: String

    /// Update user permission for the app
    public func patch(permissions: [PatchRequest.Permission]) -> Request<Void> {
      Request(method: "PATCH", url: path, body: PatchRequest(permissions: permissions), id: "apps_updateUserPermissions")
    }

    public struct PatchRequest: Encodable {
      /// The permissions the user has for the app
      public var permissions: [Permission]

      public enum Permission: String, Codable, CaseIterable {
        case manager
        case developer
        case viewer
      }

      public init(permissions: [Permission]) {
        self.permissions = permissions
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(permissions, forKey: "permissions")
      }
    }

    /// Removes the user from the app
    public var delete: Request<Void> {
      Request(method: "DELETE", url: path, id: "apps_removeUser")
    }
  }
}