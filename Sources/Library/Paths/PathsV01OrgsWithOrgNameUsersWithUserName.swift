// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName.Users {
  public func userName(_ userName: String) -> WithUserName {
    WithUserName(path: "\(path)/\(userName)")
  }

  public struct WithUserName {
    /// Path: `/v0.1/orgs/{org_name}/users/{user_name}`
    public let path: String

    /// Get a user information from an organization by name - if there is explicit permission return it, if not if not return highest implicit permission
    public var get: Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, id: "users_getForOrg")
    }

    /// Updates the given organization user
    public func patch(role: PatchRequest.Role? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "PATCH", url: path, body: PatchRequest(role: role), id: "users_updateOrgRole")
    }

    public struct PatchRequest: Encodable {
      /// The user's role in the organizatiion
      public var role: Role?

      /// The user's role in the organizatiion
      public enum Role: String, Codable, CaseIterable {
        case admin
        case collaborator
        case member
      }

      public init(role: Role? = nil) {
        self.role = role
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(role, forKey: "role")
      }
    }

    /// Removes a user from an organization.
    public var delete: Request<Void> {
      Request(method: "DELETE", url: path, id: "users_removeFromOrg")
    }
  }
}
