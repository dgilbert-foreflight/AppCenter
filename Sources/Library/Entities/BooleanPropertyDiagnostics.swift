// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BooleanPropertyDiagnostics: Codable {
  public var type: String
  public var name: String

  public init(type: String, name: String) {
    self.type = type
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.type = try values.decode(String.self, forKey: "type")
    self.name = try values.decode(String.self, forKey: "name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(type, forKey: "type")
    try values.encode(name, forKey: "name")
  }
}
