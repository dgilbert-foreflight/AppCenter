// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InternalUserSignupResponse: Codable, Identifiable {
  /// The unique id (UUID) of the user
  public var id: UUID
  /// The full name of the user. Might for example be first and last name
  public var displayName: String
  /// The email address of the user
  public var email: String
  /// The name of the external auth provider
  public var externalProvider: String?
  /// The user ID given by the external provider
  public var externalUserID: String?
  /// The unique name that is used to identify the user.
  public var name: String
  /// The current status of the user record after signup
  public var status: Status?

  /// The current status of the user record after signup
  public enum Status: String, Codable, CaseIterable {
    case complete = "Complete"
    case needsVerification = "NeedsVerification"
  }

  public init(id: UUID, displayName: String, email: String, externalProvider: String? = nil, externalUserID: String? = nil, name: String, status: Status? = nil) {
    self.id = id
    self.displayName = displayName
    self.email = email
    self.externalProvider = externalProvider
    self.externalUserID = externalUserID
    self.name = name
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(UUID.self, forKey: "id")
    self.displayName = try values.decode(String.self, forKey: "display_name")
    self.email = try values.decode(String.self, forKey: "email")
    self.externalProvider = try values.decodeIfPresent(String.self, forKey: "external_provider")
    self.externalUserID = try values.decodeIfPresent(String.self, forKey: "external_user_id")
    self.name = try values.decode(String.self, forKey: "name")
    self.status = try values.decodeIfPresent(Status.self, forKey: "status")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encode(displayName, forKey: "display_name")
    try values.encode(email, forKey: "email")
    try values.encodeIfPresent(externalProvider, forKey: "external_provider")
    try values.encodeIfPresent(externalUserID, forKey: "external_user_id")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(status, forKey: "status")
  }
}