// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashesOverallItem: Codable {
  public var crashGroupID: String?
  public var appVersion: String?
  public var overall: Overall?

  public struct Overall: Codable {
    public var crashCount: Int64?
    public var deviceCount: Int64?

    public init(crashCount: Int64? = nil, deviceCount: Int64? = nil) {
      self.crashCount = crashCount
      self.deviceCount = deviceCount
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
      self.deviceCount = try values.decodeIfPresent(Int64.self, forKey: "device_count")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(crashCount, forKey: "crash_count")
      try values.encodeIfPresent(deviceCount, forKey: "device_count")
    }
  }

  public init(crashGroupID: String? = nil, appVersion: String? = nil, overall: Overall? = nil) {
    self.crashGroupID = crashGroupID
    self.appVersion = appVersion
    self.overall = overall
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.crashGroupID = try values.decodeIfPresent(String.self, forKey: "crash_group_id")
    self.appVersion = try values.decodeIfPresent(String.self, forKey: "app_version")
    self.overall = try values.decodeIfPresent(Overall.self, forKey: "overall")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(crashGroupID, forKey: "crash_group_id")
    try values.encodeIfPresent(appVersion, forKey: "app_version")
    try values.encodeIfPresent(overall, forKey: "overall")
  }
}
