// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName {
  public var users: Users {
    Users(path: path + "/users")
  }

  public struct Users {
    /// Path: `/v0.1/orgs/{org_name}/users`
    public let path: String

    /// Returns a list of users that belong to an organization
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "users_listForOrg")
    }

    public struct GetResponseItem: Decodable {
      /// The email address of the user
      public var email: String
      /// The full name of the user. Might for example be first and last name
      public var displayName: String
      /// The date when the user joined the organization
      public var joinedAt: String
      /// The unique name that is used to identify the user.
      public var name: String
      /// The role the user has within the organization
      public var role: String

      public init(email: String, displayName: String, joinedAt: String, name: String, role: String) {
        self.email = email
        self.displayName = displayName
        self.joinedAt = joinedAt
        self.name = name
        self.role = role
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.email = try values.decode(String.self, forKey: "email")
        self.displayName = try values.decode(String.self, forKey: "display_name")
        self.joinedAt = try values.decode(String.self, forKey: "joined_at")
        self.name = try values.decode(String.self, forKey: "name")
        self.role = try values.decode(String.self, forKey: "role")
      }
    }
  }
}
