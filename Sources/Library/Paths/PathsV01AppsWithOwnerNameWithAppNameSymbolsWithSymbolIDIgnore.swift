// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Symbols.WithSymbolID {
  public var ignore: Ignore {
    Ignore(path: path + "/ignore")
  }

  public struct Ignore {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/symbols/{symbol_id}/ignore`
    public let path: String

    /// Marks a symbol by id (uuid) as ignored
    public var post: Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, id: "symbols_ignore")
    }
  }
}
