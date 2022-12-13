// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Errors.WithErrorID.Attachments.WithAttachmentID {
  public var text: Text {
    Text(path: path + "/text")
  }

  public struct Text {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/errors/{errorId}/attachments/{attachmentId}/text`
    public let path: String

    /// Error attachment text.
    public var get: Request<GetResponse> {
      Request(method: "GET", url: path, id: "Errors_ErrorAttachmentText")
    }

    public struct GetResponse: Decodable {
      public var content: String?

      public init(content: String? = nil) {
        self.content = content
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.content = try values.decodeIfPresent(String.self, forKey: "content")
      }
    }
  }
}
