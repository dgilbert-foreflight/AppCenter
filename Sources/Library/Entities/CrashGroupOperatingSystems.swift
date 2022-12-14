// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashGroupOperatingSystems: Codable {
  public var crashCount: Int64?
  public var operatingSystems: [OperatingSystem]?

  public struct OperatingSystem: Codable {
    /// OS name.
    public var operatingSystemName: String?
    /// Count of OS.
    public var crashCount: Int64?

    public init(operatingSystemName: String? = nil, crashCount: Int64? = nil) {
      self.operatingSystemName = operatingSystemName
      self.crashCount = crashCount
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.operatingSystemName = try values.decodeIfPresent(String.self, forKey: "operating_system_name")
      self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(operatingSystemName, forKey: "operating_system_name")
      try values.encodeIfPresent(crashCount, forKey: "crash_count")
    }
  }

  public init(crashCount: Int64? = nil, operatingSystems: [OperatingSystem]? = nil) {
    self.crashCount = crashCount
    self.operatingSystems = operatingSystems
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
    self.operatingSystems = try values.decodeIfPresent([OperatingSystem].self, forKey: "operating_systems")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(crashCount, forKey: "crash_count")
    try values.encodeIfPresent(operatingSystems, forKey: "operating_systems")
  }
}
