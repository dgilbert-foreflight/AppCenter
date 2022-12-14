// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// IntuneAppsResponse
public struct IntuneAppsResponse: Codable {
  /// PartitionKey year-month
  public var createdMonth: String?
  /// App id
  public var appID: String?
  /// Refresh Status
  public var refreshStatus: String?

  public init(createdMonth: String? = nil, appID: String? = nil, refreshStatus: String? = nil) {
    self.createdMonth = createdMonth
    self.appID = appID
    self.refreshStatus = refreshStatus
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.createdMonth = try values.decodeIfPresent(String.self, forKey: "created_month")
    self.appID = try values.decodeIfPresent(String.self, forKey: "app_id")
    self.refreshStatus = try values.decodeIfPresent(String.self, forKey: "refreshStatus")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(createdMonth, forKey: "created_month")
    try values.encodeIfPresent(appID, forKey: "app_id")
    try values.encodeIfPresent(refreshStatus, forKey: "refreshStatus")
  }
}
