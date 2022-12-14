// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.Owner {
  public var deviceSets: DeviceSets {
    DeviceSets(path: path + "/device_sets")
  }

  public struct DeviceSets {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/owner/device_sets`
    public let path: String

    /// Lists device sets belonging to the owner
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "test_listDeviceSetsOfOwner")
    }

    /// Device Set
    ///
    /// The name and devices of the device set
    public struct GetResponseItem: Decodable, Identifiable {
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
      public struct Owner: Decodable, Identifiable {
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
      }

      public struct DeviceConfiguration: Decodable, Identifiable {
        /// The unique id of the device configuration
        public var id: UUID?
        public var image: Image?
        public var model: Model?
        public var os: String?
        public var osName: String?

        public struct Image: Decodable {
          public var thumb: String?

          public init(thumb: String? = nil) {
            self.thumb = thumb
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.thumb = try values.decodeIfPresent(String.self, forKey: "thumb")
          }
        }

        public struct Model: Decodable {
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
    }

    /// Creates a device set belonging to the owner
    public func post(_ body: PostRequest) -> Request<PostResponse> {
      Request(method: "POST", url: path, body: body, id: "test_createDeviceSetOfOwner")
    }

    /// Device Set
    ///
    /// The name and devices of the device set
    public struct PostResponse: Decodable, Identifiable {
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
      public struct Owner: Decodable, Identifiable {
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
      }

      public struct DeviceConfiguration: Decodable, Identifiable {
        /// The unique id of the device configuration
        public var id: UUID?
        public var image: Image?
        public var model: Model?
        public var os: String?
        public var osName: String?

        public struct Image: Decodable {
          public var thumb: String?

          public init(thumb: String? = nil) {
            self.thumb = thumb
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.thumb = try values.decodeIfPresent(String.self, forKey: "thumb")
          }
        }

        public struct Model: Decodable {
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
    }

    /// Device Set update information
    ///
    /// The name of the device set and the list of device IDs
    public struct PostRequest: Encodable {
      /// List of device IDs
      public var devices: [String]
      /// The name of the device set
      public var name: String

      public init(devices: [String], name: String) {
        self.devices = devices
        self.name = name
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(devices, forKey: "devices")
        try values.encode(name, forKey: "name")
      }
    }
  }
}
