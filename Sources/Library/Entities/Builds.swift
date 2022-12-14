// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BuildsItem: Codable, Identifiable {
  /// The build ID
  public var id: Int
  /// The build number
  public var buildNumber: String
  /// The time the build was queued
  public var queueTime: String
  /// The time the build was started
  public var startTime: String?
  /// The time the build was finished
  public var finishTime: String?
  /// The time the build status was last changed
  public var lastChangedDate: String?
  /// The build status
  public var status: String
  /// The build result
  public var result: String
  /// The source branch name
  public var sourceBranch: String
  /// The source SHA
  public var sourceVersion: String

  public init(id: Int, buildNumber: String, queueTime: String, startTime: String? = nil, finishTime: String? = nil, lastChangedDate: String? = nil, status: String, result: String, sourceBranch: String, sourceVersion: String) {
    self.id = id
    self.buildNumber = buildNumber
    self.queueTime = queueTime
    self.startTime = startTime
    self.finishTime = finishTime
    self.lastChangedDate = lastChangedDate
    self.status = status
    self.result = result
    self.sourceBranch = sourceBranch
    self.sourceVersion = sourceVersion
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(Int.self, forKey: "id")
    self.buildNumber = try values.decode(String.self, forKey: "buildNumber")
    self.queueTime = try values.decode(String.self, forKey: "queueTime")
    self.startTime = try values.decodeIfPresent(String.self, forKey: "startTime")
    self.finishTime = try values.decodeIfPresent(String.self, forKey: "finishTime")
    self.lastChangedDate = try values.decodeIfPresent(String.self, forKey: "lastChangedDate")
    self.status = try values.decode(String.self, forKey: "status")
    self.result = try values.decode(String.self, forKey: "result")
    self.sourceBranch = try values.decode(String.self, forKey: "sourceBranch")
    self.sourceVersion = try values.decode(String.self, forKey: "sourceVersion")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(buildNumber, forKey: "buildNumber")
    try values.encode(queueTime, forKey: "queueTime")
    try values.encodeIfPresent(startTime, forKey: "startTime")
    try values.encodeIfPresent(finishTime, forKey: "finishTime")
    try values.encodeIfPresent(lastChangedDate, forKey: "lastChangedDate")
    try values.encode(status, forKey: "status")
    try values.encode(result, forKey: "result")
    try values.encode(sourceBranch, forKey: "sourceBranch")
    try values.encode(sourceVersion, forKey: "sourceVersion")
  }
}
