// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName.Invitations {
  public func email(_ email: String) -> WithEmail {
    WithEmail(path: "\(path)/\(email)")
  }

  public struct WithEmail {
    /// Path: `/v0.1/orgs/{org_name}/invitations/{email}`
    public let path: String

    /// Allows the role of an invited user to be changed
    public func patch(role: PatchRequest.Role? = nil) -> Request<Void> {
      Request(method: "PATCH", url: path, body: PatchRequest(role: role), id: "orgInvitations_update")
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
  }
}
