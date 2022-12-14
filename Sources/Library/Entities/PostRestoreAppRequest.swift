// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PostRestoreAppRequest: Codable {
  /// The internal unique id (UUID) of the account of the user, who makes the request.
  public var responsibleAdminID: UUID

  public init(responsibleAdminID: UUID) {
    self.responsibleAdminID = responsibleAdminID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.responsibleAdminID = try values.decode(UUID.self, forKey: "responsibleAdminId")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(responsibleAdminID, forKey: "responsibleAdminId")
  }
}
