// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var branches: Branches {
    Branches(path: path + "/branches")
  }

  public struct Branches {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/branches`
    public let path: String

    /// Returns the list of Git branches for this application
    public var get: Request<[[String: GetResponseItemItem]]> {
      Request(method: "GET", url: path, id: "builds_listBranches")
    }

    /// The branch build core properties
    public struct GetResponseItemItem: Decodable {
      public var branch: Branch?
      public var isEnabled: Bool?

      public struct Branch: Decodable {
        /// The branch name
        public var name: String
        public var commit: Commit

        public struct Commit: Decodable {
          /// The commit SHA
          public var sha: String?
          /// The URL to the commit
          public var url: String?

          public init(sha: String? = nil, url: String? = nil) {
            self.sha = sha
            self.url = url
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.sha = try values.decodeIfPresent(String.self, forKey: "sha")
            self.url = try values.decodeIfPresent(String.self, forKey: "url")
          }
        }

        public init(name: String, commit: Commit) {
          self.name = name
          self.commit = commit
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.name = try values.decode(String.self, forKey: "name")
          self.commit = try values.decode(Commit.self, forKey: "commit")
        }
      }

      public init(branch: Branch? = nil, isEnabled: Bool? = nil) {
        self.branch = branch
        self.isEnabled = isEnabled
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.branch = try values.decodeIfPresent(Branch.self, forKey: "branch")
        self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
      }
    }
  }
}