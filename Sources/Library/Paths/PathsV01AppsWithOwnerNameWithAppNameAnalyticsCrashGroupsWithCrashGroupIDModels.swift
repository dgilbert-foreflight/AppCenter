// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics.CrashGroups.WithCrashGroupID {
  public var models: Models {
    Models(path: path + "/models")
  }

  public struct Models {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/crash_groups/{crash_group_id}/models`
    public let path: String

    /// Available for UWP apps only.
    ///
    /// Top models of the selected crash group with selected version. Available for UWP apps only.
    @available(*, deprecated, message: "Deprecated")
    public func get(version: String, top: Int64? = nil) -> Request<GetResponse> {
      Request(method: "GET", url: path, query: makeGetQuery(version, top), id: "Analytics_CrashGroupModelCounts")
    }

    public struct GetResponse: Decodable {
      public var crashCount: Int64?
      public var models: [Model]?

      public struct Model: Decodable {
        /// Model's name.
        public var modelName: String?
        /// Count of model.
        public var crashCount: Int64?

        public init(modelName: String? = nil, crashCount: Int64? = nil) {
          self.modelName = modelName
          self.crashCount = crashCount
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.modelName = try values.decodeIfPresent(String.self, forKey: "model_name")
          self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
        }
      }

      public init(crashCount: Int64? = nil, models: [Model]? = nil) {
        self.crashCount = crashCount
        self.models = models
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
        self.models = try values.decodeIfPresent([Model].self, forKey: "models")
      }
    }

    private func makeGetQuery(_ version: String, _ top: Int64?) -> [(String, String?)] {
      let encoder = URLQueryEncoder()
      encoder.encode(version, forKey: "version")
      encoder.encode(top, forKey: "$top")
      return encoder.items
    }
  }
}
