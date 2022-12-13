// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Orgs.WithOrgName.DistributionGroups.WithDistributionGroupName {
  public var resendInvite: ResendInvite {
    ResendInvite(path: path + "/resend_invite")
  }

  public struct ResendInvite {
    /// Path: `/v0.1/orgs/{org_name}/distribution_groups/{distribution_group_name}/resend_invite`
    public let path: String

    /// Resend shared distribution group invite notification to previously invited testers
    public func post(userEmails: [String]? = nil) -> Request<Void> {
      Request(method: "POST", url: path, body: ["user_emails": userEmails], id: "distributionGroups_resendSharedInvite")
    }
  }
}