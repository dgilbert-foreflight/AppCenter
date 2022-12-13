// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct RepoInfo: Codable {
  /// The repository url
  public var repoURL: String
  /// The external user ID
  public var externalUserID: String?

  public init(repoURL: String, externalUserID: String? = nil) {
    self.repoURL = repoURL
    self.externalUserID = externalUserID
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.repoURL = try values.decode(String.self, forKey: "repo_url")
    self.externalUserID = try values.decodeIfPresent(String.self, forKey: "external_user_id")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(repoURL, forKey: "repo_url")
    try values.encodeIfPresent(externalUserID, forKey: "external_user_id")
  }
}
