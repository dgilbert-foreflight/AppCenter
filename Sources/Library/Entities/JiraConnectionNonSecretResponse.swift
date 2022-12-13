// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// SharedConnectionResponse
public struct JiraConnectionNonSecretResponse: Codable {
  /// Display name of shared connection
  public var displayName: String
  /// Service type of shared connection can be apple|gitlab|googleplay|jira
  public var serviceType: ServiceType
  /// The type of the credential
  public var credentialType: CredentialType?

  /// Service type of shared connection can be apple|gitlab|googleplay|jira
  public enum ServiceType: String, Codable, CaseIterable {
    case apple
    case jira
    case googleplay
    case gitlab
  }

  /// The type of the credential
  public enum CredentialType: String, Codable, CaseIterable {
    case credentials
    case certificate
    case key
  }

  public init(displayName: String, serviceType: ServiceType, credentialType: CredentialType? = nil) {
    self.displayName = displayName
    self.serviceType = serviceType
    self.credentialType = credentialType
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.displayName = try values.decode(String.self, forKey: "displayName")
    self.serviceType = try values.decode(ServiceType.self, forKey: "serviceType")
    self.credentialType = try values.decodeIfPresent(CredentialType.self, forKey: "credentialType")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(displayName, forKey: "displayName")
    try values.encode(serviceType, forKey: "serviceType")
    try values.encodeIfPresent(credentialType, forKey: "credentialType")
  }
}
