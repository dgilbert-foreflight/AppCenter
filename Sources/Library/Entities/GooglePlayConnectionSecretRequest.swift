// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// SharedConnectionRequest
public struct GooglePlayConnectionSecretRequest: Codable {
  /// Display name of shared connection
  public var displayName: String?
  /// Service type of shared connection can be apple|gitlab|googleplay|jira|applecertificate
  public var serviceType: ServiceType
  /// Credential type of the shared connection. Values can be credentials|certificate
  public var credentialType: CredentialType?
  /// Shared connection details
  public var data: Data?

  /// Service type of shared connection can be apple|gitlab|googleplay|jira|applecertificate
  public enum ServiceType: String, Codable, CaseIterable {
    case apple
    case jira
    case googleplay
    case gitlab
  }

  /// Credential type of the shared connection. Values can be credentials|certificate
  public enum CredentialType: String, Codable, CaseIterable {
    case credentials
    case certificate
    case key
  }

  /// Shared connection details
  public struct Data: Codable {
    /// Username to connect to shared connection.
    public var username: String?
    /// Password to connect to shared connection.
    public var password: String?

    public init(username: String? = nil, password: String? = nil) {
      self.username = username
      self.password = password
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.username = try values.decodeIfPresent(String.self, forKey: "username")
      self.password = try values.decodeIfPresent(String.self, forKey: "password")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(username, forKey: "username")
      try values.encodeIfPresent(password, forKey: "password")
    }
  }

  public init(displayName: String? = nil, serviceType: ServiceType, credentialType: CredentialType? = nil, data: Data? = nil) {
    self.displayName = displayName
    self.serviceType = serviceType
    self.credentialType = credentialType
    self.data = data
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
    self.serviceType = try values.decode(ServiceType.self, forKey: "serviceType")
    self.credentialType = try values.decodeIfPresent(CredentialType.self, forKey: "credentialType")
    self.data = try values.decodeIfPresent(Data.self, forKey: "data")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(displayName, forKey: "displayName")
    try values.encode(serviceType, forKey: "serviceType")
    try values.encodeIfPresent(credentialType, forKey: "credentialType")
    try values.encodeIfPresent(data, forKey: "data")
  }
}
