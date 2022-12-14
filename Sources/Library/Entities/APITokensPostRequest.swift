// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct APITokensPostRequest: Codable {
  /// The description of the token
  public var description: String?
  /// An encrypted value of the token.
  public var encryptedToken: String?
  /// The scope for this token. An array of supported roles.
  public var scope: [ScopeItem]?
  /// The hashed value of api token
  public var tokenHash: String?
  /// The token's type. public:managed by the user; in_app_update:special token for in-app update scenario; buid:dedicated for CI usage for now; session:for CLI session management; tester_app: used for tester mobile app; default is "public".'
  public var tokenType: TokenType?

  public enum ScopeItem: String, Codable, CaseIterable {
    case all
    case inAppUpdate = "in_app_update"
    case viewer
  }

  /// The token's type. public:managed by the user; in_app_update:special token for in-app update scenario; buid:dedicated for CI usage for now; session:for CLI session management; tester_app: used for tester mobile app; default is "public".'
  public enum TokenType: String, Codable, CaseIterable {
    case `public`
    case inAppUpdate = "in_app_update"
    case build
    case session
    case testerApp = "tester_app"
  }

  public init(description: String? = nil, encryptedToken: String? = nil, scope: [ScopeItem]? = nil, tokenHash: String? = nil, tokenType: TokenType? = nil) {
    self.description = description
    self.encryptedToken = encryptedToken
    self.scope = scope
    self.tokenHash = tokenHash
    self.tokenType = tokenType
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.description = try values.decodeIfPresent(String.self, forKey: "description")
    self.encryptedToken = try values.decodeIfPresent(String.self, forKey: "encrypted_token")
    self.scope = try values.decodeIfPresent([ScopeItem].self, forKey: "scope")
    self.tokenHash = try values.decodeIfPresent(String.self, forKey: "token_hash")
    self.tokenType = try values.decodeIfPresent(TokenType.self, forKey: "token_type")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(description, forKey: "description")
    try values.encodeIfPresent(encryptedToken, forKey: "encrypted_token")
    try values.encodeIfPresent(scope, forKey: "scope")
    try values.encodeIfPresent(tokenHash, forKey: "token_hash")
    try values.encodeIfPresent(tokenType, forKey: "token_type")
  }
}
