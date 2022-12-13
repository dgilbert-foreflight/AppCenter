// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ErrorRetentionSettings: Codable {
  public var retentionInDays: Int

  public init(retentionInDays: Int) {
    self.retentionInDays = retentionInDays
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.retentionInDays = try values.decode(Int.self, forKey: "retention_in_days")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(retentionInDays, forKey: "retention_in_days")
  }
}
