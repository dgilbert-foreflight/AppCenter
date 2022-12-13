// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.User.Invitations.Orgs.WithInvitationToken {
  public var accept: Accept {
    Accept(path: path + "/accept")
  }

  public struct Accept {
    /// Path: `/v0.1/user/invitations/orgs/{invitation_token}/accept`
    public let path: String

    /// Accepts a pending organization invitation for the specified user
    public func post(_ body: [String: AnyJSON]? = nil) -> Request<Void> {
      Request(method: "POST", url: path, body: body, id: "orgInvitations_accept")
    }
  }
}
