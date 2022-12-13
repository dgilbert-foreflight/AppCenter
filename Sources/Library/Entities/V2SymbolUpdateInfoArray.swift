// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Symbol update message
public struct V2SymbolUpdateInfoArrayItem: Codable {
  /// UUID of the symbol
  public var symbolID: String
  /// Application id
  public var appID: String
  /// Symbol upload status
  public var status: Status

  /// Symbol upload status
  public enum Status: String, Codable, CaseIterable {
    case missing
    case ignored
    case available
  }

  public init(symbolID: String, appID: String, status: Status) {
    self.symbolID = symbolID
    self.appID = appID
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.symbolID = try values.decode(String.self, forKey: "symbol_id")
    self.appID = try values.decode(String.self, forKey: "app_id")
    self.status = try values.decode(Status.self, forKey: "status")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(symbolID, forKey: "symbol_id")
    try values.encode(appID, forKey: "app_id")
    try values.encode(status, forKey: "status")
  }
}