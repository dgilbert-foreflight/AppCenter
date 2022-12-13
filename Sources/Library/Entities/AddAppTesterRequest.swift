// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AddAppTesterRequest: Codable {
  /// The user ID of the tester that needs to be added
  public var userID: UUID
  /// The ID of the release the user was added to
  public var releaseID: Int

  public init(userID: UUID, releaseID: Int) {
    self.userID = userID
    self.releaseID = releaseID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.userID = try values.decode(UUID.self, forKey: "user_id")
    self.releaseID = try values.decode(Int.self, forKey: "release_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(userID, forKey: "user_id")
    try values.encode(releaseID, forKey: "release_id")
  }
}
