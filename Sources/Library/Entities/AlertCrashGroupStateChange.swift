// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// AlertCrashGroup patching parameter
public struct AlertCrashGroupStateChange: Codable {
  public var state: State?

  public enum State: String, Codable, CaseIterable {
    case `open` = "Open"
    case closed = "Closed"
    case ignored = "Ignored"
  }

  public init(state: State? = nil) {
    self.state = state
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.state = try values.decodeIfPresent(State.self, forKey: "state")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(state, forKey: "state")
  }
}
