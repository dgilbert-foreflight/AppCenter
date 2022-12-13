// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// GitHub Marketplace purchase
public struct GitHubMarketplacePurchase: Codable {
  /// GitHub account information
  public var account: Account?
  /// GitHub Marketplace plan
  public var plan: Plan?

  /// GitHub account information
  public struct Account: Codable, Identifiable {
    /// Id of GitHub account
    public var id: Int?
    /// Type of GitHub account
    public var accountType: AccountType?

    /// Type of GitHub account
    public enum AccountType: String, Codable, CaseIterable {
      case user = "User"
      case organization = "Organization"
    }

    public init(id: Int? = nil, accountType: AccountType? = nil) {
      self.id = id
      self.accountType = accountType
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decodeIfPresent(Int.self, forKey: "id")
      self.accountType = try values.decodeIfPresent(AccountType.self, forKey: "accountType")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(id, forKey: "id")
      try values.encodeIfPresent(accountType, forKey: "accountType")
    }
  }

  /// GitHub Marketplace plan
  public struct Plan: Codable, Identifiable {
    /// Id of the GitHub plan
    public var id: Int?

    public init(id: Int? = nil) {
      self.id = id
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decodeIfPresent(Int.self, forKey: "id")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(id, forKey: "id")
    }
  }

  public init(account: Account? = nil, plan: Plan? = nil) {
    self.account = account
    self.plan = plan
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.account = try values.decodeIfPresent(Account.self, forKey: "account")
    self.plan = try values.decodeIfPresent(Plan.self, forKey: "plan")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(account, forKey: "account")
    try values.encodeIfPresent(plan, forKey: "plan")
  }
}
