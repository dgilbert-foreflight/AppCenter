// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashGroupModels: Codable {
  public var crashCount: Int64?
  public var models: [Model]?

  public struct Model: Codable {
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

  public init(crashCount: Int64? = nil, models: [Model]? = nil) {
    self.crashCount = crashCount
    self.models = models
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
    self.models = try values.decodeIfPresent([Model].self, forKey: "models")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(crashCount, forKey: "crash_count")
    try values.encodeIfPresent(models, forKey: "models")
  }
}