// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Set additional details for the placeholder ReleaseUpload that will be scheduled for delete.
public struct PostPlaceholderReleaseUploadForDeleteRequest: Codable {
  /// Additional details to identify why the placeholder ReleaseUpload is being created.
  public var errorDetails: String?

  public init(errorDetails: String? = nil) {
    self.errorDetails = errorDetails
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.errorDetails = try values.decodeIfPresent(String.self, forKey: "error_details")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(errorDetails, forKey: "error_details")
  }
}
