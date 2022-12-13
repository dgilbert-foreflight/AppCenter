// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Notifications {
  public var emailSettings: EmailSettings {
    EmailSettings(path: path + "/emailSettings")
  }

  public struct EmailSettings {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/notifications/emailSettings`
    public let path: String

    /// Get Email notification settings of user for a particular app
    public var get: Request<GetResponse> {
      Request(method: "GET", url: path, id: "notifications_getAppEmailSettings")
    }

    /// Alerting Email Settings of the user for a particular app
    public struct GetResponse: Decodable {
      /// Unique request identifier for tracking
      public var requestID: String

      public init(requestID: String) {
        self.requestID = requestID
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.requestID = try values.decode(String.self, forKey: "request_id")
      }
    }
  }
}