// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// An object containing all the release metadata.
public struct ReleaseMetadata: Codable {
  /// Dsa signature of the release for the sparkle feed.
  public var dsaSignature: String?
  /// EdDSA signature of the release for the sparkle feed.
  public var edSignature: String?

  public init(dsaSignature: String? = nil, edSignature: String? = nil) {
    self.dsaSignature = dsaSignature
    self.edSignature = edSignature
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.dsaSignature = try values.decodeIfPresent(String.self, forKey: "dsa_signature")
    self.edSignature = try values.decodeIfPresent(String.self, forKey: "ed_signature")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(dsaSignature, forKey: "dsa_signature")
    try values.encodeIfPresent(edSignature, forKey: "ed_signature")
  }
}
