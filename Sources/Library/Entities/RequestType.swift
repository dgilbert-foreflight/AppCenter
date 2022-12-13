// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Request type
public enum RequestType: String, Codable, CaseIterable {
  case unsupported = "Unsupported"
  case delete = "Delete"
  case purge = "Purge"
  case undoDelete = "UndoDelete"
  case scheduled = "Scheduled"
  case appDelete = "AppDelete"
  case appPurge = "AppPurge"
  case appUndoDelete = "AppUndoDelete"
  case export = "Export"
  case customerAccountDelete = "CustomerAccountDelete"
  case customerAccountExport = "CustomerAccountExport"
  case customerUserDelete = "CustomerUserDelete"
  case customerUserExport = "CustomerUserExport"
}
