// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashOverall: Codable {
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
