// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct APITokenDeleteResponse: Codable, Identifiable {
  /// The unique id (UUID) of the api token
  public var id: UUID
  /// The hashed value of api token
  public var tokenHash: String

  public init(id: UUID, tokenHash: String) {
    self.id = id
    self.tokenHash = tokenHash
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(UUID.self, forKey: "id")
    self.tokenHash = try values.decode(String.self, forKey: "token_hash")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(tokenHash, forKey: "token_hash")
  }
}
