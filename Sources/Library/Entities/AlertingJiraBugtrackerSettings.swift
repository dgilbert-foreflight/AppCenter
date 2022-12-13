// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Bugtracker specific settings
public struct AlertingJiraBugtrackerSettings: Codable {
  public var callbackURL: String?
  public var ownerName: String
  /// Type of bugtracker
  public var type: `Type`

  /// Type of bugtracker
  public enum `Type`: String, Codable, CaseIterable {
    case github
    case vsts
    case jira
  }

  public init(callbackURL: String? = nil, ownerName: String, type: `Type`) {
    self.callbackURL = callbackURL
    self.ownerName = ownerName
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.callbackURL = try values.decodeIfPresent(String.self, forKey: "callback_url")
    self.ownerName = try values.decode(String.self, forKey: "owner_name")
    self.type = try values.decode(`Type`.self, forKey: "type")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(callbackURL, forKey: "callback_url")
    try values.encode(ownerName, forKey: "owner_name")
    try values.encode(type, forKey: "type")
  }
}