// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionMetrics: Codable {
  /// The name of the subsciption (prefixed with the topic name)
  public var name: String
  /// The number of messages in the subscription
  public var messageCount: Double

  public init(name: String, messageCount: Double) {
    self.name = name
    self.messageCount = messageCount
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.name = try values.decode(String.self, forKey: "name")
    self.messageCount = try values.decode(Double.self, forKey: "message_count")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(name, forKey: "name")
    try values.encode(messageCount, forKey: "message_count")
  }
}