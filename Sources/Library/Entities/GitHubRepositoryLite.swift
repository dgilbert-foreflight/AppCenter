// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The lite version of GitHub repository
public struct GitHubRepositoryLite: Codable, Identifiable {
  /// The repository id
  public var id: Double?

  public init(id: Double? = nil) {
    self.id = id
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(Double.self, forKey: "id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
  }
}
