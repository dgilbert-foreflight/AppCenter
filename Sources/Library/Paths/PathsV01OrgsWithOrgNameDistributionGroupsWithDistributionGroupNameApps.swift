// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName.DistributionGroups.WithDistributionGroupName {
  public var apps: Apps {
    Apps(path: path + "/apps")
  }

  public struct Apps {
    /// Path: `/v0.1/orgs/{org_name}/distribution_groups/{distribution_group_name}/apps`
    public let path: String

    /// Get apps from a distribution group in an org
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "distributionGroups_getApps")
    }

    public struct GetResponseItem: Decodable, Identifiable {
      /// The unique ID (UUID) of the app
      public var id: UUID
      /// The description of the app
      public var description: String?
      /// The display name of the app
      public var displayName: String
      /// A one-word descriptive release-type value that starts with a capital letter but is otherwise lowercase
      public var releaseType: String?
      /// The string representation of the URL pointing to the app's icon
      public var iconURL: String?
      /// The string representation of the source of the app's icon
      public var iconSource: String?
      /// The name of the app used in URLs
      public var name: String
      /// The OS the app will be running on
      public var os: Os
      /// The information about the app's owner
      public var owner: Owner
      /// The platform of the app
      public var platform: String?
      /// The creation origin of this app
      public var origin: String?

      /// The OS the app will be running on
      public enum Os: String, Codable, CaseIterable {
        case android = "Android"
        case iOS
        case macOS
        case tizen = "Tizen"
        case tvOS
        case windows = "Windows"
        case linux = "Linux"
        case custom = "Custom"
      }

      /// The information about the app's owner
      public struct Owner: Decodable, Identifiable {
        /// The unique id (UUID) of the owner
        public var id: UUID
        /// The avatar URL of the owner
        public var avatarURL: String?
        /// The owner's display name
        public var displayName: String
        /// The owner's email address
        public var email: String?
        /// The unique name that used to identify the owner
        public var name: String
        /// The owner type. Can either be 'org' or 'user'
        public var type: `Type`

        /// The owner type. Can either be 'org' or 'user'
        public enum `Type`: String, Codable, CaseIterable {
          case org
          case user
        }

        public init(id: UUID, avatarURL: String? = nil, displayName: String, email: String? = nil, name: String, type: `Type`) {
          self.id = id
          self.avatarURL = avatarURL
          self.displayName = displayName
          self.email = email
          self.name = name
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.id = try values.decode(UUID.self, forKey: "id")
          self.avatarURL = try values.decodeIfPresent(String.self, forKey: "avatar_url")
          self.displayName = try values.decode(String.self, forKey: "display_name")
          self.email = try values.decodeIfPresent(String.self, forKey: "email")
          self.name = try values.decode(String.self, forKey: "name")
          self.type = try values.decode(`Type`.self, forKey: "type")
        }
      }

      public init(id: UUID, description: String? = nil, displayName: String, releaseType: String? = nil, iconURL: String? = nil, iconSource: String? = nil, name: String, os: Os, owner: Owner, platform: String? = nil, origin: String? = nil) {
        self.id = id
        self.description = description
        self.displayName = displayName
        self.releaseType = releaseType
        self.iconURL = iconURL
        self.iconSource = iconSource
        self.name = name
        self.os = os
        self.owner = owner
        self.platform = platform
        self.origin = origin
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(UUID.self, forKey: "id")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.displayName = try values.decode(String.self, forKey: "display_name")
        self.releaseType = try values.decodeIfPresent(String.self, forKey: "release_type")
        self.iconURL = try values.decodeIfPresent(String.self, forKey: "icon_url")
        self.iconSource = try values.decodeIfPresent(String.self, forKey: "icon_source")
        self.name = try values.decode(String.self, forKey: "name")
        self.os = try values.decode(Os.self, forKey: "os")
        self.owner = try values.decode(Owner.self, forKey: "owner")
        self.platform = try values.decodeIfPresent(String.self, forKey: "platform")
        self.origin = try values.decodeIfPresent(String.self, forKey: "origin")
      }
    }

    /// Add apps to distribution group in an org
    public func post(apps: [PostRequest.App]? = nil) -> Request<Void> {
      Request(method: "POST", url: path, body: PostRequest(apps: apps), id: "distributionGroups_addApps")
    }

    public struct PostRequest: Encodable {
      /// The list of apps to add to distribution group
      public var apps: [App]?

      public struct App: Encodable {
        /// The name of the app to be added to the distribution group
        public var name: String

        public init(name: String) {
          self.name = name
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encode(name, forKey: "name")
        }
      }

      public init(apps: [App]? = nil) {
        self.apps = apps
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(apps, forKey: "apps")
      }
    }
  }
}
