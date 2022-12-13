// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Account.Test {
  public var export: Export {
    Export(path: path + "/export")
  }

  public struct Export {
    /// Path: `/v0.1/account/test/export`
    public let path: String

    /// Lists all the endpoints available for Test accounts data
    public var get: Request<GetResponse> {
      Request(method: "GET", url: path, id: "test_gdprExportAccounts")
    }

    public struct GetResponse: Decodable {
      public var resources: [Resource]?

      public struct Resource: Decodable {
        public var rel: String?
        public var path: String?

        public init(rel: String? = nil, path: String? = nil) {
          self.rel = rel
          self.path = path
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.rel = try values.decodeIfPresent(String.self, forKey: "rel")
          self.path = try values.decodeIfPresent(String.self, forKey: "path")
        }
      }

      public init(resources: [Resource]? = nil) {
        self.resources = resources
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.resources = try values.decodeIfPresent([Resource].self, forKey: "resources")
      }
    }
  }
}
