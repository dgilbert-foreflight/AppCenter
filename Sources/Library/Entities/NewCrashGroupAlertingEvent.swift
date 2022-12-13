// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// New crash group alerting event
public struct NewCrashGroupAlertingEvent: Codable {
  /// ISO 8601 date time when event was generated
  public var eventTimestamp: String
  /// A unique identifier for this event instance. Useful for deduplication
  public var eventID: String
  /// Obsolete. Use emailProperties.
  public var properties: [String: AnyJSON]?
  /// Properties of new crash group
  public var crashGroupProperties: CrashGroupProperties?

  /// Properties of new crash group
  public struct CrashGroupProperties: Codable, Identifiable {
    public var id: String
    public var name: String
    public var reason: String
    public var url: String
    public var appDisplayName: String
    public var appPlatform: String
    public var appVersion: String
    public var stackTrace: [String]

    public init(id: String, name: String, reason: String, url: String, appDisplayName: String, appPlatform: String, appVersion: String, stackTrace: [String]) {
      self.id = id
      self.name = name
      self.reason = reason
      self.url = url
      self.appDisplayName = appDisplayName
      self.appPlatform = appPlatform
      self.appVersion = appVersion
      self.stackTrace = stackTrace
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decode(String.self, forKey: "id")
      self.name = try values.decode(String.self, forKey: "name")
      self.reason = try values.decode(String.self, forKey: "reason")
      self.url = try values.decode(String.self, forKey: "url")
      self.appDisplayName = try values.decode(String.self, forKey: "app_display_name")
      self.appPlatform = try values.decode(String.self, forKey: "app_platform")
      self.appVersion = try values.decode(String.self, forKey: "app_version")
      self.stackTrace = try values.decode([String].self, forKey: "stack_trace")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(id, forKey: "id")
      try values.encode(name, forKey: "name")
      try values.encode(reason, forKey: "reason")
      try values.encode(url, forKey: "url")
      try values.encode(appDisplayName, forKey: "app_display_name")
      try values.encode(appPlatform, forKey: "app_platform")
      try values.encode(appVersion, forKey: "app_version")
      try values.encode(stackTrace, forKey: "stack_trace")
    }
  }

  public init(eventTimestamp: String, eventID: String, properties: [String: AnyJSON]? = nil, crashGroupProperties: CrashGroupProperties? = nil) {
    self.eventTimestamp = eventTimestamp
    self.eventID = eventID
    self.properties = properties
    self.crashGroupProperties = crashGroupProperties
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.eventTimestamp = try values.decode(String.self, forKey: "event_timestamp")
    self.eventID = try values.decode(String.self, forKey: "event_id")
    self.properties = try values.decodeIfPresent([String: AnyJSON].self, forKey: "properties")
    self.crashGroupProperties = try values.decodeIfPresent(CrashGroupProperties.self, forKey: "crash_group_properties")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(eventTimestamp, forKey: "event_timestamp")
    try values.encode(eventID, forKey: "event_id")
    try values.encodeIfPresent(properties, forKey: "properties")
    try values.encodeIfPresent(crashGroupProperties, forKey: "crash_group_properties")
  }
}
