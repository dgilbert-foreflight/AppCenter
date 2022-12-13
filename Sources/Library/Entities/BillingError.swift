// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Error
public struct BillingError: Codable {
  public var error: Error?

  public struct Error: Codable {
    /// The status code return by the API. It can be 400 or 403 or 500.
    public var code: Int?
    /// The reason for the request failed
    public var message: String?

    public init(code: Int? = nil, message: String? = nil) {
      self.code = code
      self.message = message
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.code = try values.decodeIfPresent(Int.self, forKey: "code")
      self.message = try values.decodeIfPresent(String.self, forKey: "message")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(code, forKey: "code")
      try values.encodeIfPresent(message, forKey: "message")
    }
  }

  public init(error: Error? = nil) {
    self.error = error
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.error = try values.decodeIfPresent(Error.self, forKey: "error")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(error, forKey: "error")
  }
}
