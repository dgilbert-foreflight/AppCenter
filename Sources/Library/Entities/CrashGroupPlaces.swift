// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CrashGroupPlaces: Codable {
  public var crashCount: Int64?
  public var places: [Place]?

  public struct Place: Codable {
    /// Place name.
    public var placeName: String?
    /// Count of places.
    public var crashCount: Int64?

    public init(placeName: String? = nil, crashCount: Int64? = nil) {
      self.placeName = placeName
      self.crashCount = crashCount
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.placeName = try values.decodeIfPresent(String.self, forKey: "place_name")
      self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(placeName, forKey: "place_name")
      try values.encodeIfPresent(crashCount, forKey: "crash_count")
    }
  }

  public init(crashCount: Int64? = nil, places: [Place]? = nil) {
    self.crashCount = crashCount
    self.places = places
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.crashCount = try values.decodeIfPresent(Int64.self, forKey: "crash_count")
    self.places = try values.decodeIfPresent([Place].self, forKey: "places")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(crashCount, forKey: "crash_count")
    try values.encodeIfPresent(places, forKey: "places")
  }
}
