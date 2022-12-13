// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct OptimizelyUserMetaDataResponse: Codable {
  public var userID: String?
  public var metadata: [String: AnyJSON]?

  public init(userID: String? = nil, metadata: [String: AnyJSON]? = nil) {
    self.userID = userID
    self.metadata = metadata
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.userID = try values.decodeIfPresent(String.self, forKey: "userId")
    self.metadata = try values.decodeIfPresent([String: AnyJSON].self, forKey: "metadata")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(userID, forKey: "userId")
    try values.encodeIfPresent(metadata, forKey: "metadata")
  }
}
