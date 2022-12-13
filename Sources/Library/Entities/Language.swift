// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Language: Codable {
  /// Language's name.
  public var languageName: String?
  /// Count current of language.
  public var count: Int64?
  /// Count of previous lanugage.
  public var previousCount: Int64?

  public init(languageName: String? = nil, count: Int64? = nil, previousCount: Int64? = nil) {
    self.languageName = languageName
    self.count = count
    self.previousCount = previousCount
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.languageName = try values.decodeIfPresent(String.self, forKey: "language_name")
    self.count = try values.decodeIfPresent(Int64.self, forKey: "count")
    self.previousCount = try values.decodeIfPresent(Int64.self, forKey: "previous_count")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(languageName, forKey: "language_name")
    try values.encodeIfPresent(count, forKey: "count")
    try values.encodeIfPresent(previousCount, forKey: "previous_count")
  }
}