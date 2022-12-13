// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// URL that can be used to check the status of the update devices operation and the updated profiles.
public struct UpdateResignStatusResponse: Codable {
  /// The status.
  public var status: String
  /// A zip of the updated provisioning profiles. Base64 encoded.
  public var profilesZipBase64: String?

  public init(status: String, profilesZipBase64: String? = nil) {
    self.status = status
    self.profilesZipBase64 = profilesZipBase64
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.status = try values.decode(String.self, forKey: "status")
    self.profilesZipBase64 = try values.decodeIfPresent(String.self, forKey: "profiles_zip_base64")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(status, forKey: "status")
    try values.encodeIfPresent(profilesZipBase64, forKey: "profiles_zip_base64")
  }
}