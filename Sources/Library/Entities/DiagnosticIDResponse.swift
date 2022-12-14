// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The diagnostic id for the given publish action
public struct DiagnosticIDResponse: Codable {
  /// Diagnostic id
  public var diagnosticID: String?

  public init(diagnosticID: String? = nil) {
    self.diagnosticID = diagnosticID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.diagnosticID = try values.decodeIfPresent(String.self, forKey: "diagnostic_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(diagnosticID, forKey: "diagnostic_id")
  }
}
