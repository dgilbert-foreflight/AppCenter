// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Missing symbol
public struct V2MissingSymbol: Codable {
  /// Symbol id
  public var symbolID: String
  /// Symbol name
  public var name: String
  /// Symbol plarform
  public var platform: String?
  /// Symbol status
  public var status: Status

  /// Symbol status
  public enum Status: String, Codable, CaseIterable {
    case missing
    case ignored
    case available
  }

  public init(symbolID: String, name: String, platform: String? = nil, status: Status) {
    self.symbolID = symbolID
    self.name = name
    self.platform = platform
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.symbolID = try values.decode(String.self, forKey: "symbol_id")
    self.name = try values.decode(String.self, forKey: "name")
    self.platform = try values.decodeIfPresent(String.self, forKey: "platform")
    self.status = try values.decode(Status.self, forKey: "status")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(symbolID, forKey: "symbol_id")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(platform, forKey: "platform")
    try values.encode(status, forKey: "status")
  }
}
