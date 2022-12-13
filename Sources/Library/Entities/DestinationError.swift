// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DestinationError: Codable, Identifiable {
  /// Error Codes:<br>
  /// <b>invalid_store_secrets</b>: While distributing to store, secrets provided for store are not valid.<br>
  /// <b>store_release_bad_request</b>: Proper package release details for the store is not provided.<br>
  /// <b>store_release_unauthorized</b>: User is not authorized to publish to store due to invalid developer credentials.<br>
  /// <b>store_release_forbidden</b>: Publish to store is forbidden due to conflicts/errors in the release version and already existing version in the store.<br>
  /// <b>store_release_promotion</b>: Release already distributed, promoting a release is not supported.<br>
  /// <b>store_track_deactivated</b>: One or more tracks would be deactivated with this release. This is not supported yet.<br>
  /// <b>store_release_not_found</b>: App with the given package name is not found in the store.<br>
  /// <b>store_release_not_available</b>: The release is not available.<br>
  /// <b>internal_server_error</b>: Failed to distribute to a destination due to an internal server error.
  public var code: String?
  public var message: String?
  public var id: String?
  public var name: String?

  public init(code: String? = nil, message: String? = nil, id: String? = nil, name: String? = nil) {
    self.code = code
    self.message = message
    self.id = id
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.code = try values.decodeIfPresent(String.self, forKey: "code")
    self.message = try values.decodeIfPresent(String.self, forKey: "message")
    self.id = try values.decodeIfPresent(String.self, forKey: "id")
    self.name = try values.decodeIfPresent(String.self, forKey: "name")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(code, forKey: "code")
    try values.encodeIfPresent(message, forKey: "message")
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(name, forKey: "name")
  }
}