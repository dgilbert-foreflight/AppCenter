// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppRequest: Codable {
  /// A short text describing the app
  public var description: String?
  /// A one-word descriptive release-type value that starts with a capital letter but is otherwise lowercase
  public var releaseType: String?
  /// The descriptive name of the app. This can contain any characters
  public var displayName: String
  /// The name of the app used in URLs
  public var name: String?
  /// The OS the app will be running on
  public var os: Os
  /// The platform of the app
  public var platform: Platform

  /// The OS the app will be running on
  public enum Os: String, Codable, CaseIterable {
    case android = "Android"
    case iOS
    case macOS
    case tizen = "Tizen"
    case tvOS
    case windows = "Windows"
    case linux = "Linux"
    case custom = "Custom"
  }

  /// The platform of the app
  public enum Platform: String, Codable, CaseIterable {
    case java = "Java"
    case objectiveCSwift = "Objective-C-Swift"
    case uwp = "UWP"
    case cordova = "Cordova"
    case reactNative = "React-Native"
    case xamarin = "Xamarin"
    case unity = "Unity"
    case electron = "Electron"
    case wpf = "WPF"
    case winForms = "WinForms"
    case custom = "Custom"
  }

  public init(description: String? = nil, releaseType: String? = nil, displayName: String, name: String? = nil, os: Os, platform: Platform) {
    self.description = description
    self.releaseType = releaseType
    self.displayName = displayName
    self.name = name
    self.os = os
    self.platform = platform
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.description = try values.decodeIfPresent(String.self, forKey: "description")
    self.releaseType = try values.decodeIfPresent(String.self, forKey: "release_type")
    self.displayName = try values.decode(String.self, forKey: "display_name")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
    self.os = try values.decode(Os.self, forKey: "os")
    self.platform = try values.decode(Platform.self, forKey: "platform")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(description, forKey: "description")
    try values.encodeIfPresent(releaseType, forKey: "release_type")
    try values.encode(displayName, forKey: "display_name")
    try values.encodeIfPresent(name, forKey: "name")
    try values.encode(os, forKey: "os")
    try values.encode(platform, forKey: "platform")
  }
}