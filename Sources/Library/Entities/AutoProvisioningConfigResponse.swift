// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A response from API containing information for a Auto Provisioning Config.
public struct AutoProvisioningConfigResponse: Codable, Identifiable {
  /// The identifier of the config.
  public var id: Double?
  /// The identifier of the App.
  public var appID: String?
  /// The identifier of the destination.
  public var destinationID: String?
  /// A key to a secret in customer-credential-store. apple_developer_account refers to the user's developer account that is used to log into https://developer.apple.com. Normally the user's email.
  public var appleDeveloperAccountKey: String?
  /// A key to a secret in customer-credential-store. distribution_certificate refers to the cusomer's certificate (that holds the private key) that will be used to sign the app.
  public var appleDistributionCertificateKey: String?
  /// When *true* enables auto provisioning
  public var allowAutoProvisioning: Bool?

  public init(id: Double? = nil, appID: String? = nil, destinationID: String? = nil, appleDeveloperAccountKey: String? = nil, appleDistributionCertificateKey: String? = nil, allowAutoProvisioning: Bool? = nil) {
    self.id = id
    self.appID = appID
    self.destinationID = destinationID
    self.appleDeveloperAccountKey = appleDeveloperAccountKey
    self.appleDistributionCertificateKey = appleDistributionCertificateKey
    self.allowAutoProvisioning = allowAutoProvisioning
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(Double.self, forKey: "id")
    self.appID = try values.decodeIfPresent(String.self, forKey: "app_id")
    self.destinationID = try values.decodeIfPresent(String.self, forKey: "destination_id")
    self.appleDeveloperAccountKey = try values.decodeIfPresent(String.self, forKey: "apple_developer_account_key")
    self.appleDistributionCertificateKey = try values.decodeIfPresent(String.self, forKey: "apple_distribution_certificate_key")
    self.allowAutoProvisioning = try values.decodeIfPresent(Bool.self, forKey: "allow_auto_provisioning")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(appID, forKey: "app_id")
    try values.encodeIfPresent(destinationID, forKey: "destination_id")
    try values.encodeIfPresent(appleDeveloperAccountKey, forKey: "apple_developer_account_key")
    try values.encodeIfPresent(appleDistributionCertificateKey, forKey: "apple_distribution_certificate_key")
    try values.encodeIfPresent(allowAutoProvisioning, forKey: "allow_auto_provisioning")
  }
}
