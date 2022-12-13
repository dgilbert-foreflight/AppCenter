// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.TestRuns.WithTestRunID.Hashes {
  public var batch: Batch {
    Batch(path: path + "/batch")
  }

  public struct Batch {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/test_runs/{test_run_id}/hashes/batch`
    public let path: String

    /// Adds file with the given hash to a test run
    public func post(_ body: [PostRequestItem]) -> Request<[PostResponseItem]> {
      Request(method: "POST", url: path, body: body, id: "test_uploadHashesBatch")
    }

    /// Test Cloud File Hash Response
    ///
    /// Response message for single uploaded file hash
    public struct PostResponseItem: Decodable {
      /// Type of the file
      public var fileType: FileType
      /// SHA256 hash of the file
      public var checksum: String
      /// Relative path of the file
      public var relativePath: String?
      /// Test Cloud Hash Upload Status
      ///
      /// Status of the upload
      public var uploadStatus: UploadStatus

      /// Type of the file
      public enum FileType: String, Codable, CaseIterable {
        case dsymFile = "dsym-file"
        case appFile = "app-file"
        case testFile = "test-file"
      }

      /// Test Cloud Hash Upload Status
      ///
      /// Status of the upload
      public struct UploadStatus: Decodable {
        /// HTTP status code that represent result of upload
        public var statusCode: Double
        /// URI that should be used to make POST request if file with given hash doesn't exist. This is set when status_code is equal to 412
        public var location: String?

        public init(statusCode: Double, location: String? = nil) {
          self.statusCode = statusCode
          self.location = location
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.statusCode = try values.decode(Double.self, forKey: "statusCode")
          self.location = try values.decodeIfPresent(String.self, forKey: "location")
        }
      }

      public init(fileType: FileType, checksum: String, relativePath: String? = nil, uploadStatus: UploadStatus) {
        self.fileType = fileType
        self.checksum = checksum
        self.relativePath = relativePath
        self.uploadStatus = uploadStatus
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.fileType = try values.decode(FileType.self, forKey: "fileType")
        self.checksum = try values.decode(String.self, forKey: "checksum")
        self.relativePath = try values.decodeIfPresent(String.self, forKey: "relativePath")
        self.uploadStatus = try values.decode(UploadStatus.self, forKey: "uploadStatus")
      }
    }

    /// Test Cloud File Hash
    ///
    /// Hash, type, path and byte range of a file that is required in test run
    public struct PostRequestItem: Encodable {
      /// Type of the file
      public var fileType: FileType
      /// SHA256 hash of the file
      public var checksum: String
      /// Relative path of the file
      public var relativePath: String

      /// Type of the file
      public enum FileType: String, Codable, CaseIterable {
        case dsymFile = "dsym-file"
        case appFile = "app-file"
        case testFile = "test-file"
      }

      public init(fileType: FileType, checksum: String, relativePath: String) {
        self.fileType = fileType
        self.checksum = checksum
        self.relativePath = relativePath
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(fileType, forKey: "fileType")
        try values.encode(checksum, forKey: "checksum")
        try values.encode(relativePath, forKey: "relativePath")
      }
    }
  }
}
