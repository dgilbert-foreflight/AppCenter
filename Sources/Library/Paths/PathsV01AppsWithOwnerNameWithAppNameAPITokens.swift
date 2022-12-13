// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var apiTokens: APITokens {
    APITokens(path: path + "/api_tokens")
  }

  public struct APITokens {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/api_tokens`
    public let path: String

    /// Returns App API tokens for the app
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "appApiTokens_list")
    }

    public struct GetResponseItem: Decodable, Identifiable {
      /// The unique id (UUID) of the api token
      public var id: String
      /// The description of the token
      public var description: String?
      /// The scope for this token.
      public var scope: [ScopeItem]?
      /// The creation time
      public var createdAt: String

      public enum ScopeItem: String, Codable, CaseIterable {
        case all
        case viewer
      }

      public init(id: String, description: String? = nil, scope: [ScopeItem]? = nil, createdAt: String) {
        self.id = id
        self.description = description
        self.scope = scope
        self.createdAt = createdAt
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.scope = try values.decodeIfPresent([ScopeItem].self, forKey: "scope")
        self.createdAt = try values.decode(String.self, forKey: "created_at")
      }
    }

    /// Creates a new App API token
    public func post(_ body: PostRequest? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "appApiTokens_new")
    }

    public struct PostRequest: Encodable {
      /// The description of the token
      public var description: String?
      /// The scope for this token.
      public var scope: [ScopeItem]?

      public enum ScopeItem: String, Codable, CaseIterable {
        case all
        case viewer
      }

      public init(description: String? = nil, scope: [ScopeItem]? = nil) {
        self.description = description
        self.scope = scope
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(scope, forKey: "scope")
      }
    }
  }
}
