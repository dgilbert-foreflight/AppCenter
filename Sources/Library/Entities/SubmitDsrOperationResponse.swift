// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubmitDsrOperationResponse: Codable {
  /// The status of the DSR operation
  public var status: Status?

  /// The status of the DSR operation
  public enum Status: String, Codable, CaseIterable {
    case notStarted = "NotStarted"
    case inProgress = "InProgress"
    case completed = "Completed"
    case failure = "Failure"
  }

  public init(status: Status? = nil) {
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.status = try values.decodeIfPresent(Status.self, forKey: "status")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(status, forKey: "status")
  }
}
