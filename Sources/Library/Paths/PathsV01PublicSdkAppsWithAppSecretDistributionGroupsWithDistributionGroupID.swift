// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Public.Sdk.Apps.WithAppSecret.DistributionGroups {
  public func distributionGroupID(_ distributionGroupID: String) -> WithDistributionGroupID {
    WithDistributionGroupID(path: "\(path)/\(distributionGroupID)")
  }

  public struct WithDistributionGroupID {
    /// Path: `/v0.1/public/sdk/apps/{app_secret}/distribution_groups/{distribution_group_id}`
    public let path: String
  }
}
