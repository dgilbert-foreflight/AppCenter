// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Apple Certificate Details
public struct AppleCertificateDetails: Codable {
  /// The certificate contents in base 64 encoded string
  public var base64Certificate: String
  /// The password for the certificate
  public var password: String

  public init(base64Certificate: String, password: String) {
    self.base64Certificate = base64Certificate
    self.password = password
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.base64Certificate = try values.decode(String.self, forKey: "base64Certificate")
    self.password = try values.decode(String.self, forKey: "password")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(base64Certificate, forKey: "base64Certificate")
    try values.encode(password, forKey: "password")
  }
}