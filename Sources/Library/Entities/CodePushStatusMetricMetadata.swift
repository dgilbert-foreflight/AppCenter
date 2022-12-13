// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CodePushStatusMetricMetadata: Codable {
  public var deploymentKey: String
  public var label: String?
  public var appVersion: String?
  public var previousDeploymentKey: String?
  public var previousLabelOrAppVersion: String?
  public var status: String?
  public var clientUniqueID: String?

  public init(deploymentKey: String, label: String? = nil, appVersion: String? = nil, previousDeploymentKey: String? = nil, previousLabelOrAppVersion: String? = nil, status: String? = nil, clientUniqueID: String? = nil) {
    self.deploymentKey = deploymentKey
    self.label = label
    self.appVersion = appVersion
    self.previousDeploymentKey = previousDeploymentKey
    self.previousLabelOrAppVersion = previousLabelOrAppVersion
    self.status = status
    self.clientUniqueID = clientUniqueID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.deploymentKey = try values.decode(String.self, forKey: "deployment_key")
    self.label = try values.decodeIfPresent(String.self, forKey: "label")
    self.appVersion = try values.decodeIfPresent(String.self, forKey: "app_version")
    self.previousDeploymentKey = try values.decodeIfPresent(String.self, forKey: "previous_deployment_key")
    self.previousLabelOrAppVersion = try values.decodeIfPresent(String.self, forKey: "previous_label_or_app_version")
    self.status = try values.decodeIfPresent(String.self, forKey: "status")
    self.clientUniqueID = try values.decodeIfPresent(String.self, forKey: "client_unique_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(deploymentKey, forKey: "deployment_key")
    try values.encodeIfPresent(label, forKey: "label")
    try values.encodeIfPresent(appVersion, forKey: "app_version")
    try values.encodeIfPresent(previousDeploymentKey, forKey: "previous_deployment_key")
    try values.encodeIfPresent(previousLabelOrAppVersion, forKey: "previous_label_or_app_version")
    try values.encodeIfPresent(status, forKey: "status")
    try values.encodeIfPresent(clientUniqueID, forKey: "client_unique_id")
  }
}
