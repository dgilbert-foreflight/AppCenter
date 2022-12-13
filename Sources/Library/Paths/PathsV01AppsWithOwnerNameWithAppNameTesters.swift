// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var testers: Testers {
    Testers(path: path + "/testers")
  }

  public struct Testers {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/testers`
    public let path: String

    /// Returns the testers associated with the app specified with the given app name which belongs to the given owner.
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "apps_listTesters")
    }

    public struct GetResponseItem: Decodable, Identifiable {
      /// The unique id (UUID) of the user
      public var id: UUID
      /// The avatar URL of the user
      public var avatarURL: String?
      /// User is required to send an old password in order to change the password.
      public var canChangePassword: Bool?
      /// The full name of the user. Might for example be first and last name
      public var displayName: String
      /// The email address of the user
      public var email: String
      /// The unique name that is used to identify the user.
      public var name: String
      /// The permissions the user has for the app
      public var permissions: [Permission]?
      /// The creation origin of this user
      public var origin: Origin

      public enum Permission: String, Codable, CaseIterable {
        case manager
        case developer
        case viewer
        case tester
      }

      /// The creation origin of this user
      public enum Origin: String, Codable, CaseIterable {
        case appcenter
        case hockeyapp
        case codepush
      }

      public init(id: UUID, avatarURL: String? = nil, canChangePassword: Bool? = nil, displayName: String, email: String, name: String, permissions: [Permission]? = nil, origin: Origin) {
        self.id = id
        self.avatarURL = avatarURL
        self.canChangePassword = canChangePassword
        self.displayName = displayName
        self.email = email
        self.name = name
        self.permissions = permissions
        self.origin = origin
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(UUID.self, forKey: "id")
        self.avatarURL = try values.decodeIfPresent(String.self, forKey: "avatar_url")
        self.canChangePassword = try values.decodeIfPresent(Bool.self, forKey: "can_change_password")
        self.displayName = try values.decode(String.self, forKey: "display_name")
        self.email = try values.decode(String.self, forKey: "email")
        self.name = try values.decode(String.self, forKey: "name")
        self.permissions = try values.decodeIfPresent([Permission].self, forKey: "permissions")
        self.origin = try values.decode(Origin.self, forKey: "origin")
      }
    }
  }
}
