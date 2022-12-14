// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ValidationErrorResponse: Codable, Identifiable {
  public var id: String
  public var code: String
  public var message: String

  public init(id: String, code: String, message: String) {
    self.id = id
    self.code = code
    self.message = message
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(String.self, forKey: "id")
    self.code = try values.decode(String.self, forKey: "code")
    self.message = try values.decode(String.self, forKey: "message")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(code, forKey: "code")
    try values.encode(message, forKey: "message")
  }
}
