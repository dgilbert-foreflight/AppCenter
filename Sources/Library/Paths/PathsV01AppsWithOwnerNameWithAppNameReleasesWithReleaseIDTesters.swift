// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Releases.WithReleaseID {
  public var testers: Testers {
    Testers(path: path + "/testers")
  }

  public struct Testers {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/releases/{release_id}/testers`
    public let path: String

    /// Distributes a release to a user
    public func post(_ body: PostRequest) -> Request<PostResponse> {
      Request(method: "POST", url: path, body: body, id: "releases_addTesters")
    }

    public struct PostResponse: Decodable, Identifiable {
      /// Unique id for the release destination
      public var id: String
      /// Flag to mark the release for the provided destinations as mandatory
      public var isMandatoryUpdate: Bool
      /// The url to check provisioning status.
      public var provisioningStatusURL: String?

      public init(id: String, isMandatoryUpdate: Bool, provisioningStatusURL: String? = nil) {
        self.id = id
        self.isMandatoryUpdate = isMandatoryUpdate
        self.provisioningStatusURL = provisioningStatusURL
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.isMandatoryUpdate = try values.decode(Bool.self, forKey: "mandatory_update")
        self.provisioningStatusURL = try values.decodeIfPresent(String.self, forKey: "provisioning_status_url")
      }
    }

    public struct PostRequest: Encodable {
      /// Flag to mark the release for the provided destinations as mandatory
      public var isMandatoryUpdate: Bool?
      /// Tester's email address
      public var email: String
      /// Flag to enable or disable notifications to testers
      public var isNotifyTesters: Bool

      public init(isMandatoryUpdate: Bool? = nil, email: String, isNotifyTesters: Bool? = nil) {
        self.isMandatoryUpdate = isMandatoryUpdate
        self.email = email
        self.isNotifyTesters = isNotifyTesters ?? true
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isMandatoryUpdate, forKey: "mandatory_update")
        try values.encode(email, forKey: "email")
        try values.encodeIfPresent(isNotifyTesters, forKey: "notify_testers")
      }
    }
  }
}
