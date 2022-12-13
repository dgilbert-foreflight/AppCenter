// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct LegacyCodePushApp: Codable {
  /// The app name.
  public var name: String
  /// The app os.
  public var os: String?
  /// The app platform.
  public var platform: String?
  /// Whether the user provided their own deployments. Not currently in use.
  public var isManuallyProvisionDeployments: Bool?

  public init(name: String, os: String? = nil, platform: String? = nil, isManuallyProvisionDeployments: Bool? = nil) {
    self.name = name
    self.os = os
    self.platform = platform
    self.isManuallyProvisionDeployments = isManuallyProvisionDeployments
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.name = try values.decode(String.self, forKey: "name")
    self.os = try values.decodeIfPresent(String.self, forKey: "os")
    self.platform = try values.decodeIfPresent(String.self, forKey: "platform")
    self.isManuallyProvisionDeployments = try values.decodeIfPresent(Bool.self, forKey: "manuallyProvisionDeployments")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(os, forKey: "os")
    try values.encodeIfPresent(platform, forKey: "platform")
    try values.encodeIfPresent(isManuallyProvisionDeployments, forKey: "manuallyProvisionDeployments")
  }
}
