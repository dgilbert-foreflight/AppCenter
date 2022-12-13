// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The information for a resign attempt.
public struct ResignInfo: Codable {
  /// The group name of the resign attempt
  public var groupName: String?
  /// The provisioning profile name of group for the given resign attempt
  public var profileName: String?
  /// The provisioning profile type of group for the given resign attempt
  public var profileType: String?
  /// The name of the certificate used for the resign attempt
  public var certificateName: String?
  /// The expiration date of the certificate used for the resign attempt
  public var certificateExpiration: String?

  public init(groupName: String? = nil, profileName: String? = nil, profileType: String? = nil, certificateName: String? = nil, certificateExpiration: String? = nil) {
    self.groupName = groupName
    self.profileName = profileName
    self.profileType = profileType
    self.certificateName = certificateName
    self.certificateExpiration = certificateExpiration
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.groupName = try values.decodeIfPresent(String.self, forKey: "group_name")
    self.profileName = try values.decodeIfPresent(String.self, forKey: "profile_name")
    self.profileType = try values.decodeIfPresent(String.self, forKey: "profile_type")
    self.certificateName = try values.decodeIfPresent(String.self, forKey: "certificate_name")
    self.certificateExpiration = try values.decodeIfPresent(String.self, forKey: "certificate_expiration")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(groupName, forKey: "group_name")
    try values.encodeIfPresent(profileName, forKey: "profile_name")
    try values.encodeIfPresent(profileType, forKey: "profile_type")
    try values.encodeIfPresent(certificateName, forKey: "certificate_name")
    try values.encodeIfPresent(certificateExpiration, forKey: "certificate_expiration")
  }
}
