// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct LegacyAppResponse: Codable {
  public var app: App?

  public struct App: Codable {
    /// The app name.
    public var name: String?
    public var collaborators: [String: Collaborator]?
    public var deployments: [String]?

    public struct Collaborator: Codable {
      /// Is current collaborator the same as current account.
      public var isCurrentAccount: Bool?
      /// Which permission does current account has.
      public var permission: String?

      public init(isCurrentAccount: Bool? = nil, permission: String? = nil) {
        self.isCurrentAccount = isCurrentAccount
        self.permission = permission
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isCurrentAccount = try values.decodeIfPresent(Bool.self, forKey: "isCurrentAccount")
        self.permission = try values.decodeIfPresent(String.self, forKey: "permission")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isCurrentAccount, forKey: "isCurrentAccount")
        try values.encodeIfPresent(permission, forKey: "permission")
      }
    }

    public init(name: String? = nil, collaborators: [String: Collaborator]? = nil, deployments: [String]? = nil) {
      self.name = name
      self.collaborators = collaborators
      self.deployments = deployments
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.name = try values.decodeIfPresent(String.self, forKey: "name")
      self.collaborators = try values.decodeIfPresent([String: Collaborator].self, forKey: "collaborators")
      self.deployments = try values.decodeIfPresent([String].self, forKey: "deployments")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(name, forKey: "name")
      try values.encodeIfPresent(collaborators, forKey: "collaborators")
      try values.encodeIfPresent(deployments, forKey: "deployments")
    }
  }

  public init(app: App? = nil) {
    self.app = app
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.app = try values.decodeIfPresent(App.self, forKey: "app")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(app, forKey: "app")
  }
}
