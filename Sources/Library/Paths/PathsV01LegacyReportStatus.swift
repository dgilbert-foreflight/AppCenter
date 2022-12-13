// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Legacy {
  public var reportStatus: ReportStatus {
    ReportStatus(path: path + "/reportStatus")
  }

  public struct ReportStatus {
    /// Path: `/v0.1/legacy/reportStatus`
    public let path: String
  }
}