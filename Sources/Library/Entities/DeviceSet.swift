// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The name and devices of the device set
public struct DeviceSet: Codable, Identifiable {
  /// Identifier of the device set
  public var id: String
  /// The number of manufacturers in the device set's device selection
  public var manufacturerCount: Double?
  /// Name of the device set
  public var name: String
  /// Slug of the device set
  public var slug: String?
  /// Device Set Owner
  ///
  /// The owner of a device set
  public var owner: Owner
  /// The number of os versions in the device set's device selection
  public var osVersionCount: Double?
  public var deviceConfigurations: [DeviceConfiguration]

  /// Device Set Owner
  ///
  /// The owner of a device set
  public struct Owner: Codable, Identifiable {
    /// Type of account
    public var type: String
    /// Account ID
    public var id: String
    /// Display name of the account
    public var displayName: String?
    /// Name of the account
    public var name: String

    public init(type: String, id: String, displayName: String? = nil, name: String) {
      self.type = type
      self.id = id
      self.displayName = displayName
      self.name = name
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.type = try values.decode(String.self, forKey: "type")
      self.id = try values.decode(String.self, forKey: "id")
      self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
      self.name = try values.decode(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(type, forKey: "type")
      try values.encode(id, forKey: "id")
      try values.encodeIfPresent(displayName, forKey: "displayName")
      try values.encode(name, forKey: "name")
    }
  }

  public struct DeviceConfiguration: Codable, Identifiable {
    /// The unique id of the device configuration
    public var id: UUID?
    public var image: Image?
    public var model: Model?
    public var os: String?
    public var osName: String?

    public struct Image: Codable {
      public var thumb: String?

      public init(thumb: String? = nil) {
        self.thumb = thumb
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.thumb = try values.decodeIfPresent(String.self, forKey: "thumb")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(thumb, forKey: "thumb")
      }
    }

    public struct Model: Codable {
      public var name: String?
      public var manufacturer: String?
      public var releaseDate: String?
      public var formFactor: String?

      public init(name: String? = nil, manufacturer: String? = nil, releaseDate: String? = nil, formFactor: String? = nil) {
        self.name = name
        self.manufacturer = manufacturer
        self.releaseDate = releaseDate
        self.formFactor = formFactor
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.manufacturer = try values.decodeIfPresent(String.self, forKey: "manufacturer")
        self.releaseDate = try values.decodeIfPresent(String.self, forKey: "releaseDate")
        self.formFactor = try values.decodeIfPresent(String.self, forKey: "formFactor")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(manufacturer, forKey: "manufacturer")
        try values.encodeIfPresent(releaseDate, forKey: "releaseDate")
        try values.encodeIfPresent(formFactor, forKey: "formFactor")
      }
    }

    public init(id: UUID? = nil, image: Image? = nil, model: Model? = nil, os: String? = nil, osName: String? = nil) {
      self.id = id
      self.image = image
      self.model = model
      self.os = os
      self.osName = osName
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.id = try values.decodeIfPresent(UUID.self, forKey: "id")
      self.image = try values.decodeIfPresent(Image.self, forKey: "image")
      self.model = try values.decodeIfPresent(Model.self, forKey: "model")
      self.os = try values.decodeIfPresent(String.self, forKey: "os")
      self.osName = try values.decodeIfPresent(String.self, forKey: "osName")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(id, forKey: "id")
      try values.encodeIfPresent(image, forKey: "image")
      try values.encodeIfPresent(model, forKey: "model")
      try values.encodeIfPresent(os, forKey: "os")
      try values.encodeIfPresent(osName, forKey: "osName")
    }
  }

  public init(id: String, manufacturerCount: Double? = nil, name: String, slug: String? = nil, owner: Owner, osVersionCount: Double? = nil, deviceConfigurations: [DeviceConfiguration]) {
    self.id = id
    self.manufacturerCount = manufacturerCount
    self.name = name
    self.slug = slug
    self.owner = owner
    self.osVersionCount = osVersionCount
    self.deviceConfigurations = deviceConfigurations
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decode(String.self, forKey: "id")
    self.manufacturerCount = try values.decodeIfPresent(Double.self, forKey: "manufacturerCount")
    self.name = try values.decode(String.self, forKey: "name")
    self.slug = try values.decodeIfPresent(String.self, forKey: "slug")
    self.owner = try values.decode(Owner.self, forKey: "owner")
    self.osVersionCount = try values.decodeIfPresent(Double.self, forKey: "osVersionCount")
    self.deviceConfigurations = try values.decode([DeviceConfiguration].self, forKey: "deviceConfigurations")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(id, forKey: "id")
    try values.encodeIfPresent(manufacturerCount, forKey: "manufacturerCount")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(slug, forKey: "slug")
    try values.encode(owner, forKey: "owner")
    try values.encodeIfPresent(osVersionCount, forKey: "osVersionCount")
    try values.encode(deviceConfigurations, forKey: "deviceConfigurations")
  }
}