// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName.Teams.WithTeamName.Users {
  public func userName(_ userName: String) -> WithUserName {
    WithUserName(path: "\(path)/\(userName)")
  }

  public struct WithUserName {
    /// Path: `/v0.1/orgs/{org_name}/teams/{team_name}/users/{user_name}`
    public let path: String

    /// Removes a user from a team that is owned by an organization
    public var delete: Request<Void> {
      Request(method: "DELETE", url: path, id: "teams_removeUser")
    }
  }
}
