// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.CrashGroups.WithCrashGroupID.Crashes {
  public func crashID(_ crashID: String) -> WithCrashID {
    WithCrashID(path: "\(path)/\(crashID)")
  }

  public struct WithCrashID {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/crash_groups/{crash_group_id}/crashes/{crash_id}`
    public let path: String

    /// Gets a specific crash for an app.
    @available(*, deprecated, message: "Deprecated")
    public func get(parameters: GetParameters? = nil) -> Request<AppCenter.Crash> {
      Request(method: "GET", url: path, query: parameters?.asQuery, id: "crashes_get")
    }

    public struct GetParameters {
      public var isIncludeReport: Bool?
      public var isIncludeLog: Bool?
      public var isIncludeDetails: Bool?
      public var isIncludeStacktrace: Bool?
      public var isGroupingOnly: Bool?

      public init(isIncludeReport: Bool? = nil, isIncludeLog: Bool? = nil, isIncludeDetails: Bool? = nil, isIncludeStacktrace: Bool? = nil, isGroupingOnly: Bool? = nil) {
        self.isIncludeReport = isIncludeReport
        self.isIncludeLog = isIncludeLog
        self.isIncludeDetails = isIncludeDetails
        self.isIncludeStacktrace = isIncludeStacktrace
        self.isGroupingOnly = isGroupingOnly
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(isIncludeReport, forKey: "include_report")
        encoder.encode(isIncludeLog, forKey: "include_log")
        encoder.encode(isIncludeDetails, forKey: "include_details")
        encoder.encode(isIncludeStacktrace, forKey: "include_stacktrace")
        encoder.encode(isGroupingOnly, forKey: "grouping_only")
        return encoder.items
      }
    }

    /// Delete a specific crash and related attachments and blobs for an app.
    @available(*, deprecated, message: "Deprecated")
    public func delete(retentionDelete: Bool? = nil) -> Request<DeleteResponse> {
      Request(method: "DELETE", url: path, query: makeDeleteQuery(retentionDelete), id: "crashes_delete")
    }

    public struct DeleteResponse: Decodable {
      public var appID: String?
      public var crashGroupID: String?
      public var crashID: String?
      public var crashesDeleted: Int?
      public var attachmentsDeleted: Int?
      public var blobsSucceeded: Int?
      public var blobsFailed: Int?

      public init(appID: String? = nil, crashGroupID: String? = nil, crashID: String? = nil, crashesDeleted: Int? = nil, attachmentsDeleted: Int? = nil, blobsSucceeded: Int? = nil, blobsFailed: Int? = nil) {
        self.appID = appID
        self.crashGroupID = crashGroupID
        self.crashID = crashID
        self.crashesDeleted = crashesDeleted
        self.attachmentsDeleted = attachmentsDeleted
        self.blobsSucceeded = blobsSucceeded
        self.blobsFailed = blobsFailed
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.appID = try values.decodeIfPresent(String.self, forKey: "app_id")
        self.crashGroupID = try values.decodeIfPresent(String.self, forKey: "crash_group_id")
        self.crashID = try values.decodeIfPresent(String.self, forKey: "crash_id")
        self.crashesDeleted = try values.decodeIfPresent(Int.self, forKey: "crashes_deleted")
        self.attachmentsDeleted = try values.decodeIfPresent(Int.self, forKey: "attachments_deleted")
        self.blobsSucceeded = try values.decodeIfPresent(Int.self, forKey: "blobs_succeeded")
        self.blobsFailed = try values.decodeIfPresent(Int.self, forKey: "blobs_failed")
      }
    }

    private func makeDeleteQuery(_ retentionDelete: Bool?) -> [(String, String?)] {
      let encoder = URLQueryEncoder()
      encoder.encode(retentionDelete, forKey: "retention_delete")
      return encoder.items
    }
  }
}