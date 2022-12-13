// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GDPRPurgeVerifyResponse: Codable {
  /// Indicate whether GDPR purge operation succeeds or not
  public var isSuccess: Bool

  public init(isSuccess: Bool) {
    self.isSuccess = isSuccess
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isSuccess = try values.decode(Bool.self, forKey: "success")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(isSuccess, forKey: "success")
  }
}
