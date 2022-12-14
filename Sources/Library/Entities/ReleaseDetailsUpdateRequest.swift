// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A request containing information for updating details of a release
public struct ReleaseDetailsUpdateRequest: Codable {
  /// Toggle this release to be enable distribute/download or not.
  public var isEnabled: Bool?
  /// Release notes for this release.
  public var releaseNotes: String?
  /// Contains metadata about the build that produced the release being uploaded
  public var build: Build?

  /// Contains metadata about the build that produced the release being uploaded
  public struct Build: Codable {
    /// The branch name of the build producing the release
    public var branchName: String?
    /// The commit hash of the build producing the release
    public var commitHash: String?
    /// The commit message of the build producing the release
    public var commitMessage: String?

    public init(branchName: String? = nil, commitHash: String? = nil, commitMessage: String? = nil) {
      self.branchName = branchName
      self.commitHash = commitHash
      self.commitMessage = commitMessage
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.branchName = try values.decodeIfPresent(String.self, forKey: "branch_name")
      self.commitHash = try values.decodeIfPresent(String.self, forKey: "commit_hash")
      self.commitMessage = try values.decodeIfPresent(String.self, forKey: "commit_message")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(branchName, forKey: "branch_name")
      try values.encodeIfPresent(commitHash, forKey: "commit_hash")
      try values.encodeIfPresent(commitMessage, forKey: "commit_message")
    }
  }

  public init(isEnabled: Bool? = nil, releaseNotes: String? = nil, build: Build? = nil) {
    self.isEnabled = isEnabled
    self.releaseNotes = releaseNotes
    self.build = build
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
    self.releaseNotes = try values.decodeIfPresent(String.self, forKey: "release_notes")
    self.build = try values.decodeIfPresent(Build.self, forKey: "build")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(isEnabled, forKey: "enabled")
    try values.encodeIfPresent(releaseNotes, forKey: "release_notes")
    try values.encodeIfPresent(build, forKey: "build")
  }
}
