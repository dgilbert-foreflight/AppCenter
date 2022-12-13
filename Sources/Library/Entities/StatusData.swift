// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Status Data from store
public struct StatusData: Codable {
  /// Status from store
  public var status: String?
  /// Store type
  public var storetype: String?
  /// Track information from store
  public var track: String?
  /// Version of the app from store
  public var version: String?

  public init(status: String? = nil, storetype: String? = nil, track: String? = nil, version: String? = nil) {
    self.status = status
    self.storetype = storetype
    self.track = track
    self.version = version
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.status = try values.decodeIfPresent(String.self, forKey: "status")
    self.storetype = try values.decodeIfPresent(String.self, forKey: "storetype")
    self.track = try values.decodeIfPresent(String.self, forKey: "track")
    self.version = try values.decodeIfPresent(String.self, forKey: "version")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(status, forKey: "status")
    try values.encodeIfPresent(storetype, forKey: "storetype")
    try values.encodeIfPresent(track, forKey: "track")
    try values.encodeIfPresent(version, forKey: "version")
  }
}