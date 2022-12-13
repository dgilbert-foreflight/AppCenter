// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.TestRuns.WithTestRunID {
  public var files: Files {
    Files(path: path + "/files")
  }

  public struct Files {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/test_runs/{test_run_id}/files`
    public let path: String

    /// Uploads file for a test run
    public var post: Request<Void> {
      Request(method: "POST", url: path, id: "test_startUploadingFile")
    }

    public enum PostResponseHeaders {
      /// Relative URL that points to the upload endpoint
      public static let location = HTTPHeader<String>(field: "Location")
    }
  }
}