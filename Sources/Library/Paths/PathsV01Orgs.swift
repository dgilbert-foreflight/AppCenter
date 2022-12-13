// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API {
  public static var orgs: Orgs {
    Orgs(path: "/v0.1/orgs")
  }

  public struct Orgs {
    /// Path: `/v0.1/orgs`
    public let path: String

    /// Returns a list of organizations the requesting user has access to
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "organizations_list")
    }

    public struct GetResponseItem: Decodable {
      /// The display name of the organization
      public var displayName: String
      /// The slug name of the organization
      public var name: String
      /// The creation origin of this organization
      public var origin: Origin

      /// The creation origin of this organization
      public enum Origin: String, Codable, CaseIterable {
        case appcenter
        case hockeyapp
      }

      public init(displayName: String, name: String, origin: Origin) {
        self.displayName = displayName
        self.name = name
        self.origin = origin
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.displayName = try values.decode(String.self, forKey: "display_name")
        self.name = try values.decode(String.self, forKey: "name")
        self.origin = try values.decode(Origin.self, forKey: "origin")
      }
    }

    /// Creates a new organization and returns it to the caller
    public func post(_ body: PostRequest) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "organizations_createOrUpdate")
    }

    public struct PostRequest: Encodable {
      /// The display name of the organization
      public var displayName: String?
      /// The name of the organization used in URLs
      public var name: String?

      public init(displayName: String? = nil, name: String? = nil) {
        self.displayName = displayName
        self.name = name
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(displayName, forKey: "display_name")
        try values.encodeIfPresent(name, forKey: "name")
      }
    }
  }
}
