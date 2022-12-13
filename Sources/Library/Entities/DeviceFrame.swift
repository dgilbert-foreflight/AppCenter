// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DeviceFrame: Codable {
  public var grid: Grid?
  public var full: Full?

  public struct Grid: Codable {
    public var width: Double?
    public var height: Double?
    public var frameURL: String?
    public var screen: [Double]?

    public init(width: Double? = nil, height: Double? = nil, frameURL: String? = nil, screen: [Double]? = nil) {
      self.width = width
      self.height = height
      self.frameURL = frameURL
      self.screen = screen
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.width = try values.decodeIfPresent(Double.self, forKey: "width")
      self.height = try values.decodeIfPresent(Double.self, forKey: "height")
      self.frameURL = try values.decodeIfPresent(String.self, forKey: "frameUrl")
      self.screen = try values.decodeIfPresent([Double].self, forKey: "screen")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(width, forKey: "width")
      try values.encodeIfPresent(height, forKey: "height")
      try values.encodeIfPresent(frameURL, forKey: "frameUrl")
      try values.encodeIfPresent(screen, forKey: "screen")
    }
  }

  public struct Full: Codable {
    public var width: Double?
    public var height: Double?
    public var frameURL: String?
    public var screen: [Double]?

    public init(width: Double? = nil, height: Double? = nil, frameURL: String? = nil, screen: [Double]? = nil) {
      self.width = width
      self.height = height
      self.frameURL = frameURL
      self.screen = screen
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.width = try values.decodeIfPresent(Double.self, forKey: "width")
      self.height = try values.decodeIfPresent(Double.self, forKey: "height")
      self.frameURL = try values.decodeIfPresent(String.self, forKey: "frameUrl")
      self.screen = try values.decodeIfPresent([Double].self, forKey: "screen")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(width, forKey: "width")
      try values.encodeIfPresent(height, forKey: "height")
      try values.encodeIfPresent(frameURL, forKey: "frameUrl")
      try values.encodeIfPresent(screen, forKey: "screen")
    }
  }

  public init(grid: Grid? = nil, full: Full? = nil) {
    self.grid = grid
    self.full = full
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.grid = try values.decodeIfPresent(Grid.self, forKey: "grid")
    self.full = try values.decodeIfPresent(Full.self, forKey: "full")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(grid, forKey: "grid")
    try values.encodeIfPresent(full, forKey: "full")
  }
}
