// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Legacy.ReportStatus {
  public var download: Download {
    Download(path: path + "/download")
  }

  public struct Download {
    /// Path: `/v0.1/legacy/reportStatus/download`
    public let path: String

    /// Report download of specified release
    public func post(_ body: PostRequest) -> Request<Void> {
      Request(method: "POST", url: path, body: body, id: "legacyCodePushAcquisition_updateDownloadStatus")
    }

    public struct PostRequest: Encodable {
      public var deploymentKey: String?
      public var label: String?
      public var appVersion: String?
      public var previousDeploymentKey: String?
      public var previousLabelOrAppVersion: String?
      public var status: String?
      public var clientUniqueID: String?

      public init(deploymentKey: String? = nil, label: String? = nil, appVersion: String? = nil, previousDeploymentKey: String? = nil, previousLabelOrAppVersion: String? = nil, status: String? = nil, clientUniqueID: String? = nil) {
        self.deploymentKey = deploymentKey
        self.label = label
        self.appVersion = appVersion
        self.previousDeploymentKey = previousDeploymentKey
        self.previousLabelOrAppVersion = previousLabelOrAppVersion
        self.status = status
        self.clientUniqueID = clientUniqueID
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(deploymentKey, forKey: "deploymentKey")
        try values.encodeIfPresent(label, forKey: "label")
        try values.encodeIfPresent(appVersion, forKey: "appVersion")
        try values.encodeIfPresent(previousDeploymentKey, forKey: "previousDeploymentKey")
        try values.encodeIfPresent(previousLabelOrAppVersion, forKey: "previousLabelOrAppVersion")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(clientUniqueID, forKey: "clientUniqueId")
      }
    }
  }
}
