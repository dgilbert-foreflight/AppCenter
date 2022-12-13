// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public.Codepush {
  public var updateCheck: UpdateCheck {
    UpdateCheck(path: path + "/update_check")
  }

  public struct UpdateCheck {
    /// Path: `/v0.1/public/codepush/update_check`
    public let path: String

    /// Check for updates
    public func get(parameters: GetParameters) -> Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "codePushAcquisition_updateCheck")
    }

    public struct GetParameters {
      public var deploymentKey: String
      public var appVersion: String
      public var packageHash: String?
      public var label: String?
      public var clientUniqueID: String?
      public var isCompanion: Bool?
      public var previousLabelOrAppVersion: String?
      public var previousDeploymentKey: String?

      public init(deploymentKey: String, appVersion: String, packageHash: String? = nil, label: String? = nil, clientUniqueID: String? = nil, isCompanion: Bool? = nil, previousLabelOrAppVersion: String? = nil, previousDeploymentKey: String? = nil) {
        self.deploymentKey = deploymentKey
        self.appVersion = appVersion
        self.packageHash = packageHash
        self.label = label
        self.clientUniqueID = clientUniqueID
        self.isCompanion = isCompanion
        self.previousLabelOrAppVersion = previousLabelOrAppVersion
        self.previousDeploymentKey = previousDeploymentKey
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(deploymentKey, forKey: "deployment_key")
        encoder.encode(appVersion, forKey: "app_version")
        encoder.encode(packageHash, forKey: "package_hash")
        encoder.encode(label, forKey: "label")
        encoder.encode(clientUniqueID, forKey: "client_unique_id")
        encoder.encode(isCompanion, forKey: "is_companion")
        encoder.encode(previousLabelOrAppVersion, forKey: "previous_label_or_app_version")
        encoder.encode(previousDeploymentKey, forKey: "previous_deployment_key")
        return encoder.items
      }
    }
  }
}
