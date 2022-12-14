// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct FeaturePatchRequest: Codable {
  /// The friendly name of the feature
  public var description: String?
  /// The full (friendly) name of the feature.
  public var displayName: String?
  /// The state of the feature
  public var state: Int?

  public init(description: String? = nil, displayName: String? = nil, state: Int? = nil) {
    self.description = description
    self.displayName = displayName
    self.state = state
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.description = try values.decodeIfPresent(String.self, forKey: "description")
    self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
    self.state = try values.decodeIfPresent(Int.self, forKey: "state")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(description, forKey: "description")
    try values.encodeIfPresent(displayName, forKey: "display_name")
    try values.encodeIfPresent(state, forKey: "state")
  }
}
