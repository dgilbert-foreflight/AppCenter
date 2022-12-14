// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppMembership: Codable {
  public var appID: String?
  public var userID: String?
  public var permissions: [String]?
  public var origin: Origin?
  public var sourceType: SourceType?
  public var sourceID: String?

  public enum Origin: String, Codable, CaseIterable {
    case appcenter
    case hockeyapp
    case codepush
    case testcloud
    case hockeyappDogfood = "hockeyapp-dogfood"
  }

  public enum SourceType: String, Codable, CaseIterable {
    case user
    case org
    case distributionGroup = "distribution_group"
    case team
    case release
  }

  public init(appID: String? = nil, userID: String? = nil, permissions: [String]? = nil, origin: Origin? = nil, sourceType: SourceType? = nil, sourceID: String? = nil) {
    self.appID = appID
    self.userID = userID
    self.permissions = permissions
    self.origin = origin
    self.sourceType = sourceType
    self.sourceID = sourceID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.appID = try values.decodeIfPresent(String.self, forKey: "app_id")
    self.userID = try values.decodeIfPresent(String.self, forKey: "user_id")
    self.permissions = try values.decodeIfPresent([String].self, forKey: "permissions")
    self.origin = try values.decodeIfPresent(Origin.self, forKey: "origin")
    self.sourceType = try values.decodeIfPresent(SourceType.self, forKey: "source_type")
    self.sourceID = try values.decodeIfPresent(String.self, forKey: "source_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(appID, forKey: "app_id")
    try values.encodeIfPresent(userID, forKey: "user_id")
    try values.encodeIfPresent(permissions, forKey: "permissions")
    try values.encodeIfPresent(origin, forKey: "origin")
    try values.encodeIfPresent(sourceType, forKey: "source_type")
    try values.encodeIfPresent(sourceID, forKey: "source_id")
  }
}
