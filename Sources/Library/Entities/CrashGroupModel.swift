// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashGroupModel: Codable {
  /// Model's name.
  public var modelName: String?
  /// Count of model.
  public var crashCount: Int64?

  public init(modelName: String? = nil, crashCount: Int64? = nil) {
    self.modelName = modelName
    self.crashCount = crashCount
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.modelName = try values.decodeIfPresent(String.self, forKey: "model_name")
    self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(modelName, forKey: "model_name")
    try values.encodeIfPresent(crashCount, forKey: "crash_count")
  }
}
