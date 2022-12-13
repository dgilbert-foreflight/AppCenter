// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Set of toolsets available for app
public struct Toolsets: Codable {
  /// A list of Xamarin SDK bundles
  public var xamarin: [XamarinItem]?
  /// A list of Xcode versions
  public var xcode: [XcodeItem]?
  /// A list of Node versions
  public var node: [NodeItem]?

  /// The Xamarin SDK bundle
  public struct XamarinItem: Codable {
    /// The Mono version
    public var monoVersion: String?
    /// The Xamarin SDK version
    public var sdkBundle: String?
    /// If the SDK is latest stable
    public var isCurrent: Bool?
    /// If the SDK is stable
    public var isStable: Bool?
    /// Specific for iOS SDK. A list of Xcode versions supported by current SDK version
    public var xcodeVersions: [String]?

    public init(monoVersion: String? = nil, sdkBundle: String? = nil, isCurrent: Bool? = nil, isStable: Bool? = nil, xcodeVersions: [String]? = nil) {
      self.monoVersion = monoVersion
      self.sdkBundle = sdkBundle
      self.isCurrent = isCurrent
      self.isStable = isStable
      self.xcodeVersions = xcodeVersions
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.monoVersion = try values.decodeIfPresent(String.self, forKey: "monoVersion")
      self.sdkBundle = try values.decodeIfPresent(String.self, forKey: "sdkBundle")
      self.isCurrent = try values.decodeIfPresent(Bool.self, forKey: "current")
      self.isStable = try values.decodeIfPresent(Bool.self, forKey: "stable")
      self.xcodeVersions = try values.decodeIfPresent([String].self, forKey: "xcodeVersions")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(monoVersion, forKey: "monoVersion")
      try values.encodeIfPresent(sdkBundle, forKey: "sdkBundle")
      try values.encodeIfPresent(isCurrent, forKey: "current")
      try values.encodeIfPresent(isStable, forKey: "stable")
      try values.encodeIfPresent(xcodeVersions, forKey: "xcodeVersions")
    }
  }

  /// The Xcode version
  public struct XcodeItem: Codable {
    /// The version name
    public var name: String?
    /// If the Xcode is latest stable
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

  /// The Node version
  public struct NodeItem: Codable {
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

  public init(xamarin: [XamarinItem]? = nil, xcode: [XcodeItem]? = nil, node: [NodeItem]? = nil) {
    self.xamarin = xamarin
    self.xcode = xcode
    self.node = node
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.xamarin = try values.decodeIfPresent([XamarinItem].self, forKey: "xamarin")
    self.xcode = try values.decodeIfPresent([XcodeItem].self, forKey: "xcode")
    self.node = try values.decodeIfPresent([NodeItem].self, forKey: "node")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(xamarin, forKey: "xamarin")
    try values.encodeIfPresent(xcode, forKey: "xcode")
    try values.encodeIfPresent(node, forKey: "node")
  }
}