// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The Node version
public struct NodeVersion: Codable {
  /// The version name
  public var name: String?
  /// If the Node version is default for AppCenter
  public var isCurrent: Bool?

  public init(name: String? = nil, isCurrent: Bool? = nil) {
    self.name = name
    self.isCurrent = isCurrent
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.isCurrent = try values.decodeIfPresent(Bool.self, forKey: "current")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(name, forKey: "name")
    try values.encodeIfPresent(isCurrent, forKey: "current")
  }
}
