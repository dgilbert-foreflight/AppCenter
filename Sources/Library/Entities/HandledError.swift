// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct HandledError: Codable {
  public var errorID: String?
  public var timestamp: Date?
  public var deviceName: String?
  public var osVersion: String?
  public var osType: String?
  public var country: String?
  public var language: String?
  public var userID: String?
  public var hasBreadcrumbs: Bool?
  public var hasAttachments: Bool?

  public init(errorID: String? = nil, timestamp: Date? = nil, deviceName: String? = nil, osVersion: String? = nil, osType: String? = nil, country: String? = nil, language: String? = nil, userID: String? = nil, hasBreadcrumbs: Bool? = nil, hasAttachments: Bool? = nil) {
    self.errorID = errorID
    self.timestamp = timestamp
    self.deviceName = deviceName
    self.osVersion = osVersion
    self.osType = osType
    self.country = country
    self.language = language
    self.userID = userID
    self.hasBreadcrumbs = hasBreadcrumbs
    self.hasAttachments = hasAttachments
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.errorID = try values.decodeIfPresent(String.self, forKey: "errorId")
    self.timestamp = try values.decodeIfPresent(Date.self, forKey: "timestamp")
    self.deviceName = try values.decodeIfPresent(String.self, forKey: "deviceName")
    self.osVersion = try values.decodeIfPresent(String.self, forKey: "osVersion")
    self.osType = try values.decodeIfPresent(String.self, forKey: "osType")
    self.country = try values.decodeIfPresent(String.self, forKey: "country")
    self.language = try values.decodeIfPresent(String.self, forKey: "language")
    self.userID = try values.decodeIfPresent(String.self, forKey: "userId")
    self.hasBreadcrumbs = try values.decodeIfPresent(Bool.self, forKey: "hasBreadcrumbs")
    self.hasAttachments = try values.decodeIfPresent(Bool.self, forKey: "hasAttachments")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(errorID, forKey: "errorId")
    try values.encodeIfPresent(timestamp, forKey: "timestamp")
    try values.encodeIfPresent(deviceName, forKey: "deviceName")
    try values.encodeIfPresent(osVersion, forKey: "osVersion")
    try values.encodeIfPresent(osType, forKey: "osType")
    try values.encodeIfPresent(country, forKey: "country")
    try values.encodeIfPresent(language, forKey: "language")
    try values.encodeIfPresent(userID, forKey: "userId")
    try values.encodeIfPresent(hasBreadcrumbs, forKey: "hasBreadcrumbs")
    try values.encodeIfPresent(hasAttachments, forKey: "hasAttachments")
  }
}
