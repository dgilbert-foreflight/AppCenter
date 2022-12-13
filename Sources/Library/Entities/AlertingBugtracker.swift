// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Alerting bugtracker resource
public struct AlertingBugtracker: Codable {
  /// Type of bugtracker
  public var type: `Type`?
  /// Bugtracker state
  public var state: State?
  /// ID of OAuth token
  public var tokenID: String?
  /// Event types enabled for bugtracker
  public var eventTypes: [EventType]?
  /// Bugtracker specific settings
  public var settings: Settings?

  /// Type of bugtracker
  public enum `Type`: String, Codable, CaseIterable {
    case github
    case vsts
    case jira
  }

  /// Bugtracker state
  public enum State: String, Codable, CaseIterable {
    case enabled
    case disabled
    case unauthorized
  }

  /// Alerting EventTypes enum
  public enum EventType: String, Codable, CaseIterable {
    case newCrashGroupCreated
    case newAppReleased
  }

  /// Bugtracker specific settings
  public struct Settings: Codable {
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

  public init(type: `Type`? = nil, state: State? = nil, tokenID: String? = nil, eventTypes: [EventType]? = nil, settings: Settings? = nil) {
    self.type = type
    self.state = state
    self.tokenID = tokenID
    self.eventTypes = eventTypes
    self.settings = settings
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
    self.state = try values.decodeIfPresent(State.self, forKey: "state")
    self.tokenID = try values.decodeIfPresent(String.self, forKey: "token_id")
    self.eventTypes = try values.decodeIfPresent([EventType].self, forKey: "event_types")
    self.settings = try values.decodeIfPresent(Settings.self, forKey: "settings")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(type, forKey: "type")
    try values.encodeIfPresent(state, forKey: "state")
    try values.encodeIfPresent(tokenID, forKey: "token_id")
    try values.encodeIfPresent(eventTypes, forKey: "event_types")
    try values.encodeIfPresent(settings, forKey: "settings")
  }
}