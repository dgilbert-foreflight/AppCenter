// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PatchReleaseUploadStatusRequest: Codable {
  /// The new status of the release upload
  public var uploadStatus: UploadStatus

  /// The new status of the release upload
  public enum UploadStatus: String, Codable, CaseIterable {
    case uploadFinished
    case uploadCanceled
  }

  public init(uploadStatus: UploadStatus) {
    self.uploadStatus = uploadStatus
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.uploadStatus = try values.decode(UploadStatus.self, forKey: "upload_status")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(uploadStatus, forKey: "upload_status")
  }
}
