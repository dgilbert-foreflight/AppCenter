// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Alerting Default Email Settings of the user
public struct AlertUserEmailSettingsResult: Codable {
  /// Unique request identifier for tracking
  public var requestID: String
  /// The ETag of the entity
  public var eTag: String?
  /// Allows to forcefully disable emails on app or user level
  public var isEnabled: Bool
  /// The unique id (UUID) of the user
  public var userID: String?
  /// The settings the user has for the app
  public var settings: [Setting]

  /// Event Setting
  public struct Setting: Codable {
    /// Event Name
    public var eventType: EventType
    /// Frequency of event
    public var value: Value
    /// Default frequency of event
    public var defaultValue: DefaultValue?

    /// Event Name
    public enum EventType: String, Codable, CaseIterable {
      case crashNewCrashGroupCreated = "crash_newCrashGroupCreated"
    }

    /// Frequency of event
    public enum Value: String, Codable, CaseIterable {
      case disabled = "Disabled"
      case individual = "Individual"
      case daily = "Daily"
      case dailyAndIndividual = "DailyAndIndividual"
      case `default` = "Default"
    }

    /// Default frequency of event
    public enum DefaultValue: String, Codable, CaseIterable {
      case disabled = "Disabled"
      case individual = "Individual"
      case daily = "Daily"
      case dailyAndIndividual = "DailyAndIndividual"
    }

    public init(eventType: EventType, value: Value, defaultValue: DefaultValue? = nil) {
      self.eventType = eventType
      self.value = value
      self.defaultValue = defaultValue
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.eventType = try values.decode(EventType.self, forKey: "event_type")
      self.value = try values.decode(Value.self, forKey: "value")
      self.defaultValue = try values.decodeIfPresent(DefaultValue.self, forKey: "default_value")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(eventType, forKey: "event_type")
      try values.encode(value, forKey: "value")
      try values.encodeIfPresent(defaultValue, forKey: "default_value")
    }
  }

  public init(requestID: String, eTag: String? = nil, isEnabled: Bool, userID: String? = nil, settings: [Setting]) {
    self.requestID = requestID
    self.eTag = eTag
    self.isEnabled = isEnabled
    self.userID = userID
    self.settings = settings
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.requestID = try values.decode(String.self, forKey: "request_id")
    self.eTag = try values.decodeIfPresent(String.self, forKey: "eTag")
    self.isEnabled = try values.decode(Bool.self, forKey: "enabled")
    self.userID = try values.decodeIfPresent(String.self, forKey: "userId")
    self.settings = try values.decode([Setting].self, forKey: "settings")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(requestID, forKey: "request_id")
    try values.encodeIfPresent(eTag, forKey: "eTag")
    try values.encode(isEnabled, forKey: "enabled")
    try values.encodeIfPresent(userID, forKey: "userId")
    try values.encode(settings, forKey: "settings")
  }
}
