// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var repoConfig: RepoConfig {
    RepoConfig(path: path + "/repo_config")
  }

  public struct RepoConfig {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/repo_config`
    public let path: String

    /// Returns the repository build configuration status of the app
    public func get(isIncludeInactive: Bool? = nil) -> Request<[GetResponseItem]> {
      Request(method: "GET", url: path, query: makeGetQuery(isIncludeInactive), id: "repositoryConfigurations_list")
    }

    public struct GetResponseItem: Decodable, Identifiable {
      /// Repository configuration identifier
      public var id: String
      /// Type of repository
      public var type: String
      /// State of the configuration
      public var state: State
      /// Email of the user who linked the repository
      public var userEmail: String?

      /// State of the configuration
      public enum State: String, Codable, CaseIterable {
        case unauthorized
        case inactive
        case active
      }

      public init(id: String, type: String, state: State, userEmail: String? = nil) {
        self.id = id
        self.type = type
        self.state = state
        self.userEmail = userEmail
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.type = try values.decode(String.self, forKey: "type")
        self.state = try values.decode(State.self, forKey: "state")
        self.userEmail = try values.decodeIfPresent(String.self, forKey: "user_email")
      }
    }

    private func makeGetQuery(_ isIncludeInactive: Bool?) -> [(String, String?)] {
      let encoder = URLQueryEncoder()
      encoder.encode(isIncludeInactive, forKey: "includeInactive")
      return encoder.items
    }

    /// Configures the repository for build
    public func post(_ body: PostRequest) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "repositoryConfigurations_createOrUpdate")
    }

    public struct PostRequest: Encodable {
      /// The repository's git url, must be a HTTPS URL
      ///
      /// Example: "https://github.com/foo/bar.git"
      public var repoURL: String?
      /// The repository id from the repository provider. Required for repositories connected from GitHub App and GitLab.com
      public var repoID: String?
      /// The external user id from the repository provider. Required for GitLab.com repositories
      public var externalUserID: String?
      /// The id of the service connection (private). Required for GitLab self-hosted repositories
      public var serviceConnectionID: String?

      public init(repoURL: String? = nil, repoID: String? = nil, externalUserID: String? = nil, serviceConnectionID: String? = nil) {
        self.repoURL = repoURL
        self.repoID = repoID
        self.externalUserID = externalUserID
        self.serviceConnectionID = serviceConnectionID
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(repoURL, forKey: "repo_url")
        try values.encodeIfPresent(repoID, forKey: "repo_id")
        try values.encodeIfPresent(externalUserID, forKey: "external_user_id")
        try values.encodeIfPresent(serviceConnectionID, forKey: "service_connection_id")
      }
    }

    /// Removes the configuration for the repository
    public var delete: Request<[String: AnyJSON]> {
      Request(method: "DELETE", url: path, id: "repositoryConfigurations_delete")
    }
  }
}
