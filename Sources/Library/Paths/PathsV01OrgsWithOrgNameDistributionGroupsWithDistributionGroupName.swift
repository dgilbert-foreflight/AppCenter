// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName.DistributionGroups {
  public func distributionGroupName(_ distributionGroupName: String) -> WithDistributionGroupName {
    WithDistributionGroupName(path: "\(path)/\(distributionGroupName)")
  }

  public struct WithDistributionGroupName {
    /// Path: `/v0.1/orgs/{org_name}/distribution_groups/{distribution_group_name}`
    public let path: String

    /// Returns a single distribution group in org for a given distribution group name
    public var get: Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, id: "distributionGroups_getForOrg")
    }

    /// Update one given distribution group name in an org
    public func patch(_ body: PatchRequest? = nil) -> Request<[String: AnyJSON]> {
      Request(method: "PATCH", url: path, body: body, id: "distributionGroups_patchForOrg")
    }

    public struct PatchRequest: Encodable {
      /// The name of the distribution group
      public var name: String?
      /// Whether the distribution group is public
      public var isPublic: Bool?

      public init(name: String? = nil, isPublic: Bool? = nil) {
        self.name = name
        self.isPublic = isPublic
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(isPublic, forKey: "is_public")
      }
    }

    /// Deletes a single distribution group from an org with a given distribution group name
    public var delete: Request<Void> {
      Request(method: "DELETE", url: path, id: "distributionGroups_deleteForOrg")
    }
  }
}
