// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SymbolsItem: Codable {
  /// The unique id for this symbol (uuid)
  public var symbolID: String
  /// The type of the symbol for the current symbol upload
  public var type: `Type`
  /// The application that this symbol belongs to
  public var appID: String
  /// The platform that this symbol is associated with
  public var platform: String
  /// The path name of the symbol file in blob storage
  public var url: String
  /// The origin of the symbol file
  public var origin: Origin
  /// The other symbols in the same file
  public var alternateSymbolIDs: [String]
  /// Whether the symbol is ignored.
  public var status: Status
  /// The version number. Optional for Apple. Required for Android.
  public var version: String?
  /// The build number. Optional for Apple. Required for Android.
  public var build: String?
  /// The id of the symbol upload this symbol belongs to.
  public var symbolUploadID: String

  /// The type of the symbol for the current symbol upload
  public enum `Type`: String, Codable, CaseIterable {
    case apple = "Apple"
    case javaScript = "JavaScript"
    case breakpad = "Breakpad"
    case androidProguard = "AndroidProguard"
    case uwp = "UWP"
  }

  /// The origin of the symbol file
  public enum Origin: String, Codable, CaseIterable {
    case system = "System"
    case user = "User"
  }

  /// Whether the symbol is ignored.
  public enum Status: String, Codable, CaseIterable {
    case available
    case ignored
  }

  public init(symbolID: String, type: `Type`, appID: String, platform: String, url: String, origin: Origin, alternateSymbolIDs: [String], status: Status, version: String? = nil, build: String? = nil, symbolUploadID: String) {
    self.symbolID = symbolID
    self.type = type
    self.appID = appID
    self.platform = platform
    self.url = url
    self.origin = origin
    self.alternateSymbolIDs = alternateSymbolIDs
    self.status = status
    self.version = version
    self.build = build
    self.symbolUploadID = symbolUploadID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.symbolID = try values.decode(String.self, forKey: "symbol_id")
    self.type = try values.decode(`Type`.self, forKey: "type")
    self.appID = try values.decode(String.self, forKey: "app_id")
    self.platform = try values.decode(String.self, forKey: "platform")
    self.url = try values.decode(String.self, forKey: "url")
    self.origin = try values.decode(Origin.self, forKey: "origin")
    self.alternateSymbolIDs = try values.decode([String].self, forKey: "alternate_symbol_ids")
    self.status = try values.decode(Status.self, forKey: "status")
    self.version = try values.decodeIfPresent(String.self, forKey: "version")
    self.build = try values.decodeIfPresent(String.self, forKey: "build")
    self.symbolUploadID = try values.decode(String.self, forKey: "symbol_upload_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(symbolID, forKey: "symbol_id")
    try values.encode(type, forKey: "type")
    try values.encode(appID, forKey: "app_id")
    try values.encode(platform, forKey: "platform")
    try values.encode(url, forKey: "url")
    try values.encode(origin, forKey: "origin")
    try values.encode(alternateSymbolIDs, forKey: "alternate_symbol_ids")
    try values.encode(status, forKey: "status")
    try values.encodeIfPresent(version, forKey: "version")
    try values.encodeIfPresent(build, forKey: "build")
    try values.encode(symbolUploadID, forKey: "symbol_upload_id")
  }
}
