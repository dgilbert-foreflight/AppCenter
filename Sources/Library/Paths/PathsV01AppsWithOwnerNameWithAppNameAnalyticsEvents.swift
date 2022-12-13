// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Analytics {
  public var events: Events {
    Events(path: path + "/events")
  }

  public struct Events {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/analytics/events`
    public let path: String

    /// Count of active events in the time range ordered by event.
    public func get(parameters: GetParameters) -> Request<[String: AnyJSON]> {
      Request(method: "GET", url: path, query: parameters.asQuery, id: "Analytics_Events")
    }

    public struct GetParameters {
      public var start: Date
      public var end: Date?
      public var versions: [String]?
      public var eventName: [String]?
      public var top: Int64?
      public var skip: Int64?
      public var inlinecount: Inlinecount?
      public var orderby: String?

      public enum Inlinecount: String, Codable, CaseIterable {
        case allpages
        case `none`
      }

      public init(start: Date, end: Date? = nil, versions: [String]? = nil, eventName: [String]? = nil, top: Int64? = nil, skip: Int64? = nil, inlinecount: Inlinecount? = nil, orderby: String? = nil) {
        self.start = start
        self.end = end
        self.versions = versions
        self.eventName = eventName
        self.top = top
        self.skip = skip
        self.inlinecount = inlinecount
        self.orderby = orderby
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(start, forKey: "start")
        encoder.encode(end, forKey: "end")
        encoder.encode(versions, forKey: "versions", explode: false, delimiter: "|")
        encoder.encode(eventName, forKey: "event_name", explode: false, delimiter: "|")
        encoder.encode(top, forKey: "$top")
        encoder.encode(skip, forKey: "$skip")
        encoder.encode(inlinecount, forKey: "$inlinecount")
        encoder.encode(orderby, forKey: "$orderby")
        return encoder.items
      }
    }
  }
}
