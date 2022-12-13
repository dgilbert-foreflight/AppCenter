// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The Xamarin SDK bundle
public struct XamarinSDKBundle: Codable {
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