// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PatchRepoInfo: Codable {
  /// The external user ID
  public var externalUserID: String?

  public init(externalUserID: String? = nil) {
    self.externalUserID = externalUserID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.externalUserID = try values.decodeIfPresent(String.self, forKey: "external_user_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(externalUserID, forKey: "external_user_id")
  }
}
