// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Contains the token ID for a bug tracker
public struct BugTrackerTokenID: Codable {
  public var tokenID: String?

  public init(tokenID: String? = nil) {
    self.tokenID = tokenID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.tokenID = try values.decodeIfPresent(String.self, forKey: "token_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(tokenID, forKey: "token_id")
  }
}
