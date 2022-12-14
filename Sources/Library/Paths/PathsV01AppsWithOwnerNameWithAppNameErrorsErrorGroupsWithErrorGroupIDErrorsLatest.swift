// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Errors.ErrorGroups.WithErrorGroupID.Errors {
  public var latest: Latest {
    Latest(path: path + "/latest")
  }

  public struct Latest {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/errors/errorGroups/{errorGroupId}/errors/latest`
    public let path: String

    /// Latest error details.
    public var get: Request<GetResponse> {
      Request(method: "GET", url: path, id: "Errors_LatestErrorDetails")
    }

    public struct GetResponse: Decodable {
      public var country: String?
      public var deviceName: String?
      public var errorID: String?
      public var hasAttachments: Bool?
      public var hasBreadcrumbs: Bool?
      public var language: String?
      public var osType: String?
      public var osVersion: String?
      public var timestamp: Date?
      public var userID: String?

      public init(country: String? = nil, deviceName: String? = nil, errorID: String? = nil, hasAttachments: Bool? = nil, hasBreadcrumbs: Bool? = nil, language: String? = nil, osType: String? = nil, osVersion: String? = nil, timestamp: Date? = nil, userID: String? = nil) {
        self.country = country
        self.deviceName = deviceName
        self.errorID = errorID
        self.hasAttachments = hasAttachments
        self.hasBreadcrumbs = hasBreadcrumbs
        self.language = language
        self.osType = osType
        self.osVersion = osVersion
        self.timestamp = timestamp
        self.userID = userID
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.country = try values.decodeIfPresent(String.self, forKey: "country")
        self.deviceName = try values.decodeIfPresent(String.self, forKey: "deviceName")
        self.errorID = try values.decodeIfPresent(String.self, forKey: "errorId")
        self.hasAttachments = try values.decodeIfPresent(Bool.self, forKey: "hasAttachments")
        self.hasBreadcrumbs = try values.decodeIfPresent(Bool.self, forKey: "hasBreadcrumbs")
        self.language = try values.decodeIfPresent(String.self, forKey: "language")
        self.osType = try values.decodeIfPresent(String.self, forKey: "osType")
        self.osVersion = try values.decodeIfPresent(String.self, forKey: "osVersion")
        self.timestamp = try values.decodeIfPresent(Date.self, forKey: "timestamp")
        self.userID = try values.decodeIfPresent(String.self, forKey: "userId")
      }
    }
  }
}
