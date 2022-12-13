// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// List of export configurations
public struct ExportConfigurationListResult: Codable {
  public var values: [Value]
  /// The total count of exports
  public var total: Int64?
  public var nextLink: String?

  /// Export configuration result
  public struct Value: Codable, Identifiable {
    /// Export configuration id
    public var id: String
    /// Target resource type of export configuration
    public var exportType: ExportType
    /// Creation time in ISO 8601 format
    public var creationTime: String
    /// Latest time in ISO 8601 format when export completed successfully
    public var lastRunTime: String?
    public var exportEntities: [ExportEntity]?
    /// State of the export job
    public var state: State
    /// Additional information about export configuration state
    public var stateInfo: String?
    /// Resource group for the storage account/App Insights resource
    public var resourceGroup: String?
    /// Storage accout or Appinsights resource name
    public var resourceName: String?
    /// Export configuration
    public var exportConfiguration: ExportConfiguration?

    /// Target resource type of export configuration
    public enum ExportType: String, Codable, CaseIterable {
      case blobStorage = "BlobStorage"
      case appInsights = "AppInsights"
    }

    public enum ExportEntity: String, Codable, CaseIterable {
      case crashes
      case errors
      case attachments
      case noLogs = "no_logs"
    }

    /// State of the export job
    public enum State: String, Codable, CaseIterable {
      case enabled = "Enabled"
      case disabled = "Disabled"
      case pending = "Pending"
      case deleted = "Deleted"
      case invalid = "Invalid"
    }

    /// Export configuration
    public struct ExportConfiguration: Codable {
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

    public init(id: String, exportType: ExportType, creationTime: String, lastRunTime: String? = nil, exportEntities: [ExportEntity]? = nil, state: State, stateInfo: String? = nil, resourceGroup: String? = nil, resourceName: String? = nil, exportConfiguration: ExportConfiguration? = nil) {
      self.id = id
      self.exportType = exportType
      self.creationTime = creationTime
      self.lastRunTime = lastRunTime
      self.exportEntities = exportEntities
      self.state = state
      self.stateInfo = stateInfo
      self.resourceGroup = resourceGroup
      self.resourceName = resourceName
      self.exportConfiguration = exportConfiguration
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decode(String.self, forKey: "id")
      self.exportType = try values.decode(ExportType.self, forKey: "export_type")
      self.creationTime = try values.decode(String.self, forKey: "creation_time")
      self.lastRunTime = try values.decodeIfPresent(String.self, forKey: "last_run_time")
      self.exportEntities = try values.decodeIfPresent([ExportEntity].self, forKey: "export_entities")
      self.state = try values.decode(State.self, forKey: "state")
      self.stateInfo = try values.decodeIfPresent(String.self, forKey: "state_info")
      self.resourceGroup = try values.decodeIfPresent(String.self, forKey: "resource_group")
      self.resourceName = try values.decodeIfPresent(String.self, forKey: "resource_name")
      self.exportConfiguration = try values.decodeIfPresent(ExportConfiguration.self, forKey: "export_configuration")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(id, forKey: "id")
      try values.encode(exportType, forKey: "export_type")
      try values.encode(creationTime, forKey: "creation_time")
      try values.encodeIfPresent(lastRunTime, forKey: "last_run_time")
      try values.encodeIfPresent(exportEntities, forKey: "export_entities")
      try values.encode(state, forKey: "state")
      try values.encodeIfPresent(stateInfo, forKey: "state_info")
      try values.encodeIfPresent(resourceGroup, forKey: "resource_group")
      try values.encodeIfPresent(resourceName, forKey: "resource_name")
      try values.encodeIfPresent(exportConfiguration, forKey: "export_configuration")
    }
  }

  public init(values: [Value], total: Int64? = nil, nextLink: String? = nil) {
    self.values = values
    self.total = total
    self.nextLink = nextLink
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.values = try values.decode([Value].self, forKey: "values")
    self.total = try values.decodeIfPresent(Int64.self, forKey: "total")
    self.nextLink = try values.decodeIfPresent(String.self, forKey: "nextLink")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(self.values, forKey: "values")
    try values.encodeIfPresent(total, forKey: "total")
    try values.encodeIfPresent(nextLink, forKey: "nextLink")
  }
}