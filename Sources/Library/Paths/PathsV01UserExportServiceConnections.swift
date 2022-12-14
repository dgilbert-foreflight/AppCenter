// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.User.Export {
  public var serviceConnections: ServiceConnections {
    ServiceConnections(path: path + "/serviceConnections")
  }

  public struct ServiceConnections {
    /// Path: `/v0.1/user/export/serviceConnections`
    public let path: String

    /// Gets all service connections of the service type for GDPR export.
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "sharedconnection_Connections")
    }

    /// SharedConnectionResponse
    public struct GetResponseItem: Decodable {
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
    }
  }
}
