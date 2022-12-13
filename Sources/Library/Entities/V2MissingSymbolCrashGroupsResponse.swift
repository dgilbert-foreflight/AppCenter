// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Grouped by missing symbols crashes response object
public struct V2MissingSymbolCrashGroupsResponse: Codable {
  /// Total number of crashes for all the groups
  public var totalCrashCount: Int
  /// List of crash groups formed by missing symbols combination
  public var groups: [Group]

  /// Missing symbol crash group object
  public struct Group: Codable {
    /// Id of the symbol group
    public var symbolGroupID: String
    /// Number of crashes that belong to this group
    public var crashCount: Int?
    /// Number of errors that belong to this group
    public var errorCount: Int?
    /// Application id
    public var appID: String
    /// Application version
    public var appVer: String
    /// Application build
    public var appBuild: String
    /// Last update date for the group
    public var lastModified: Date
    /// List of missing symbols
    public var missingSymbols: [MissingSymbol]
    /// Group status
    public var status: Status

    /// Missing symbol
    public struct MissingSymbol: Codable {
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

    /// Group status
    public enum Status: String, Codable, CaseIterable {
      case active
      case pending
      case closed
    }

    public init(symbolGroupID: String, crashCount: Int? = nil, errorCount: Int? = nil, appID: String, appVer: String, appBuild: String, lastModified: Date, missingSymbols: [MissingSymbol], status: Status) {
      self.symbolGroupID = symbolGroupID
      self.crashCount = crashCount
      self.errorCount = errorCount
      self.appID = appID
      self.appVer = appVer
      self.appBuild = appBuild
      self.lastModified = lastModified
      self.missingSymbols = missingSymbols
      self.status = status
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.symbolGroupID = try values.decode(String.self, forKey: "symbol_group_id")
      self.crashCount = try values.decodeIfPresent(Int.self, forKey: "crash_count")
      self.errorCount = try values.decodeIfPresent(Int.self, forKey: "error_count")
      self.appID = try values.decode(String.self, forKey: "app_id")
      self.appVer = try values.decode(String.self, forKey: "app_ver")
      self.appBuild = try values.decode(String.self, forKey: "app_build")
      self.lastModified = try values.decode(Date.self, forKey: "last_modified")
      self.missingSymbols = try values.decode([MissingSymbol].self, forKey: "missing_symbols")
      self.status = try values.decode(Status.self, forKey: "status")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(symbolGroupID, forKey: "symbol_group_id")
      try values.encodeIfPresent(crashCount, forKey: "crash_count")
      try values.encodeIfPresent(errorCount, forKey: "error_count")
      try values.encode(appID, forKey: "app_id")
      try values.encode(appVer, forKey: "app_ver")
      try values.encode(appBuild, forKey: "app_build")
      try values.encode(lastModified, forKey: "last_modified")
      try values.encode(missingSymbols, forKey: "missing_symbols")
      try values.encode(status, forKey: "status")
    }
  }

  public init(totalCrashCount: Int, groups: [Group]) {
    self.totalCrashCount = totalCrashCount
    self.groups = groups
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.totalCrashCount = try values.decode(Int.self, forKey: "total_crash_count")
    self.groups = try values.decode([Group].self, forKey: "groups")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(totalCrashCount, forKey: "total_crash_count")
    try values.encode(groups, forKey: "groups")
  }
}
