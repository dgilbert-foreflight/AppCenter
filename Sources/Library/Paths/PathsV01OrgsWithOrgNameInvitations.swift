// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName {
  public var invitations: Invitations {
    Invitations(path: path + "/invitations")
  }

  public struct Invitations {
    /// Path: `/v0.1/orgs/{org_name}/invitations`
    public let path: String

    /// Gets the pending invitations for the organization
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "orgInvitations_listPending")
    }

    public struct GetResponseItem: Decodable, Identifiable {
      /// The unique ID (UUID) of the invitation
      public var id: UUID
      /// The email address of the invited user
      public var email: String
      /// The role assigned to the invited user
      public var role: String

      public init(id: UUID, email: String, role: String) {
        self.id = id
        self.email = email
        self.role = role
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(UUID.self, forKey: "id")
        self.email = try values.decode(String.self, forKey: "email")
        self.role = try values.decode(String.self, forKey: "role")
      }
    }

    /// Invites a new or existing user to an organization
    public func post(_ body: PostRequest) -> Request<Void> {
      Request(method: "POST", url: path, body: body, id: "orgInvitations_create")
    }

    public struct PostRequest: Encodable {
      /// The user's email address
      public var userEmail: String
      /// The user's role
      public var role: Role?

      /// The user's role
      public enum Role: String, Codable, CaseIterable {
        case admin
        case collaborator
        case member
      }

      public init(userEmail: String, role: Role? = nil) {
        self.userEmail = userEmail
        self.role = role
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(userEmail, forKey: "user_email")
        try values.encodeIfPresent(role, forKey: "role")
      }
    }

    /// Removes a user's invitation to an organization
    public func delete(userEmail: String) -> Request<Void> {
      Request(method: "DELETE", url: path, body: ["user_email": userEmail], id: "orgInvitations_delete")
    }
  }
}