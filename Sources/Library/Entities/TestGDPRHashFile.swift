// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TestGDPRHashFile: Codable, Identifiable {
  public var id: UUID?
  public var filename: String?

  public init(id: UUID? = nil, filename: String? = nil) {
    self.id = id
    self.filename = filename
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(UUID.self, forKey: "id")
    self.filename = try values.decodeIfPresent(String.self, forKey: "filename")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(filename, forKey: "filename")
  }
}
