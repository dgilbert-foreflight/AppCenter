// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Status of the usage record creation
public struct UsageRecordStatus: Codable {
  /// Is the age of the most recent Build service usage record within expected limits
  public var isExpectedLatestBuildExists: Bool?
  /// Is the age of the most recent Test service usage record within expected limits
  public var isExpectedLatestTestExists: Bool?
  /// The time of the most recent Build service usage record
  public var latestBuildUsageRecordTime: String?
  /// The time of the most recent Test service usage record
  public var latestTestUsageRecordTime: String?

  public init(isExpectedLatestBuildExists: Bool? = nil, isExpectedLatestTestExists: Bool? = nil, latestBuildUsageRecordTime: String? = nil, latestTestUsageRecordTime: String? = nil) {
    self.isExpectedLatestBuildExists = isExpectedLatestBuildExists
    self.isExpectedLatestTestExists = isExpectedLatestTestExists
    self.latestBuildUsageRecordTime = latestBuildUsageRecordTime
    self.latestTestUsageRecordTime = latestTestUsageRecordTime
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isExpectedLatestBuildExists = try values.decodeIfPresent(Bool.self, forKey: "expectedLatestBuildExists")
    self.isExpectedLatestTestExists = try values.decodeIfPresent(Bool.self, forKey: "expectedLatestTestExists")
    self.latestBuildUsageRecordTime = try values.decodeIfPresent(String.self, forKey: "latestBuildUsageRecordTime")
    self.latestTestUsageRecordTime = try values.decodeIfPresent(String.self, forKey: "latestTestUsageRecordTime")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(isExpectedLatestBuildExists, forKey: "expectedLatestBuildExists")
    try values.encodeIfPresent(isExpectedLatestTestExists, forKey: "expectedLatestTestExists")
    try values.encodeIfPresent(latestBuildUsageRecordTime, forKey: "latestBuildUsageRecordTime")
    try values.encodeIfPresent(latestTestUsageRecordTime, forKey: "latestTestUsageRecordTime")
  }
}
