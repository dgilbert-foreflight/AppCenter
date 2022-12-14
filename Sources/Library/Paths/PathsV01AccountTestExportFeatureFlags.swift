// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Account.Test.Export {
  public var featureFlags: FeatureFlags {
    FeatureFlags(path: path + "/featureFlags")
  }

  public struct FeatureFlags {
    /// Path: `/v0.1/account/test/export/featureFlags`
    public let path: String

    /// Lists feature flag data
    public var get: Request<GetResponse> {
      Request(method: "GET", url: path, id: "test_gdprExportFeatureFlag")
    }

    public struct GetResponse: Decodable {
      public var name: String?
      public var targetID: UUID?

      public init(name: String? = nil, targetID: UUID? = nil) {
        self.name = name
        self.targetID = targetID
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.targetID = try values.decodeIfPresent(UUID.self, forKey: "target_id")
      }
    }
  }
}
