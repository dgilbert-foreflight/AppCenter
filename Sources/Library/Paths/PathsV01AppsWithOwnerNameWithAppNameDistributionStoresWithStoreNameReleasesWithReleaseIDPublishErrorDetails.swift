// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.DistributionStores.WithStoreName.Releases.WithReleaseID {
  public var publishErrorDetails: PublishErrorDetails {
    PublishErrorDetails(path: path + "/publish_error_details")
  }

  public struct PublishErrorDetails {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/distribution_stores/{store_name}/releases/{release_id}/publish_error_details`
    public let path: String

    /// Return the Error Details of release which failed in publishing.
    public var get: Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, id: "storeReleases_getPublishError")
    }
  }
}
