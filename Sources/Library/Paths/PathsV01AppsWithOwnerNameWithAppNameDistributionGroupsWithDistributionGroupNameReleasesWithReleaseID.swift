// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.DistributionGroups.WithDistributionGroupName.Releases {
  public func releaseID(_ releaseID: String) -> WithReleaseID {
    WithReleaseID(path: "\(path)/\(releaseID)")
  }

  public struct WithReleaseID {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/distribution_groups/{distribution_group_name}/releases/{release_id}`
    public let path: String

    /// Return detailed information about a distributed release in a given distribution group.
    public var get: Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, id: "releases_getLatestByDistributionGroup")
    }

    /// Deletes a release with id 'release_id' in a given distribution group.
    public var delete: Request<Void> {
      Request(method: "DELETE", url: path, id: "releases_deleteWithDistributionGroupId")
    }
  }
}
