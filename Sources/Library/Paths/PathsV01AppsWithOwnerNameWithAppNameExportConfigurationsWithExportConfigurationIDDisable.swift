// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.ExportConfigurations.WithExportConfigurationID {
  public var disable: Disable {
    Disable(path: path + "/disable")
  }

  public struct Disable {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/export_configurations/{export_configuration_id}/disable`
    public let path: String

    /// Disable export configuration.
    public var post: Request<Void> {
      Request(method: "POST", url: path, id: "ExportConfigurations_Disable")
    }
  }
}