// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Export configuration
public struct ExportConfigurationAppInsightsKey: Codable {
  /// Type of export configuration
  public var type: `Type`
  public var exportEntities: [ExportEntity]?
  /// The resource name on azure
  public var resourceName: String?
  /// The resource group name on azure
  public var resourceGroup: String?
  /// Field to determine if backfilling should occur. The default value is true. If set to false export starts from date and time of config creation.
  public var isBackfill: Bool?

  /// Type of export configuration
  public enum `Type`: String, Codable, CaseIterable {
    case blobStorageConnectionString = "blob_storage_connection_string"
    case applicationInsightsInstrumentationKey = "application_insights_instrumentation_key"
    case blobStorageLinkedSubscription = "blob_storage_linked_subscription"
    case applicationInsightsLinkedSubscription = "application_insights_linked_subscription"
  }

  public enum ExportEntity: String, Codable, CaseIterable {
    case crashes
    case errors
    case attachments
    case noLogs = "no_logs"
  }

  public init(type: `Type`, exportEntities: [ExportEntity]? = nil, resourceName: String? = nil, resourceGroup: String? = nil, isBackfill: Bool? = nil) {
    self.type = type
    self.exportEntities = exportEntities
    self.resourceName = resourceName
    self.resourceGroup = resourceGroup
    self.isBackfill = isBackfill
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.type = try values.decode(`Type`.self, forKey: "type")
    self.exportEntities = try values.decodeIfPresent([ExportEntity].self, forKey: "export_entities")
    self.resourceName = try values.decodeIfPresent(String.self, forKey: "resource_name")
    self.resourceGroup = try values.decodeIfPresent(String.self, forKey: "resource_group")
    self.isBackfill = try values.decodeIfPresent(Bool.self, forKey: "backfill")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(type, forKey: "type")
    try values.encodeIfPresent(exportEntities, forKey: "export_entities")
    try values.encodeIfPresent(resourceName, forKey: "resource_name")
    try values.encodeIfPresent(resourceGroup, forKey: "resource_group")
    try values.encodeIfPresent(isBackfill, forKey: "backfill")
  }
}
