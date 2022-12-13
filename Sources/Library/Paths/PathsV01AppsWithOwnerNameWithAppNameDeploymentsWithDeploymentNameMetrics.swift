// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Deployments.WithDeploymentName {
  public var metrics: Metrics {
    Metrics(path: path + "/metrics")
  }

  public struct Metrics {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}/metrics`
    public let path: String

    /// Gets all releases metrics for specified Deployment
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "codePushDeploymentMetrics_get")
    }

    public struct GetResponseItem: Decodable {
      public var label: String
      public var active: Int
      public var downloaded: Int?
      public var failed: Int?
      public var installed: Int?

      public init(label: String, active: Int, downloaded: Int? = nil, failed: Int? = nil, installed: Int? = nil) {
        self.label = label
        self.active = active
        self.downloaded = downloaded
        self.failed = failed
        self.installed = installed
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.label = try values.decode(String.self, forKey: "label")
        self.active = try values.decode(Int.self, forKey: "active")
        self.downloaded = try values.decodeIfPresent(Int.self, forKey: "downloaded")
        self.failed = try values.decodeIfPresent(Int.self, forKey: "failed")
        self.installed = try values.decodeIfPresent(Int.self, forKey: "installed")
      }
    }
  }
}
