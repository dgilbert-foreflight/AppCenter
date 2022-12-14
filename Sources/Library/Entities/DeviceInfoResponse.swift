// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// The information for a single iOS device
public struct DeviceInfoResponse: Codable {
  /// The Unique Device IDentifier of the device
  public var udid: String
  /// The model identifier of the device, in the format iDeviceM,N
  public var model: String
  /// The device description, in the format "iPhone 7 Plus (A1784)"
  public var deviceName: String
  /// A combination of the device model name and the owner name.
  public var fullDeviceName: String?
  /// The last known OS version running on the device
  public var osBuild: String
  /// The last known OS version running on the device
  public var osVersion: String
  /// The device's serial number. Always empty or undefined at present.
  public var serial: String?
  /// The device's International Mobile Equipment Identity number. Always empty or undefined at present.
  public var imei: String?
  /// The user ID of the device owner.
  public var ownerID: String?
  /// The provisioning status of the device.
  public var status: String
  /// Timestamp of when the device was registered in ISO format.
  public var registeredAt: String?

  public init(udid: String, model: String, deviceName: String, fullDeviceName: String? = nil, osBuild: String, osVersion: String, serial: String? = nil, imei: String? = nil, ownerID: String? = nil, status: String, registeredAt: String? = nil) {
    self.udid = udid
    self.model = model
    self.deviceName = deviceName
    self.fullDeviceName = fullDeviceName
    self.osBuild = osBuild
    self.osVersion = osVersion
    self.serial = serial
    self.imei = imei
    self.ownerID = ownerID
    self.status = status
    self.registeredAt = registeredAt
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.udid = try values.decode(String.self, forKey: "udid")
    self.model = try values.decode(String.self, forKey: "model")
    self.deviceName = try values.decode(String.self, forKey: "device_name")
    self.fullDeviceName = try values.decodeIfPresent(String.self, forKey: "full_device_name")
    self.osBuild = try values.decode(String.self, forKey: "os_build")
    self.osVersion = try values.decode(String.self, forKey: "os_version")
    self.serial = try values.decodeIfPresent(String.self, forKey: "serial")
    self.imei = try values.decodeIfPresent(String.self, forKey: "imei")
    self.ownerID = try values.decodeIfPresent(String.self, forKey: "owner_id")
    self.status = try values.decode(String.self, forKey: "status")
    self.registeredAt = try values.decodeIfPresent(String.self, forKey: "registered_at")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(udid, forKey: "udid")
    try values.encode(model, forKey: "model")
    try values.encode(deviceName, forKey: "device_name")
    try values.encodeIfPresent(fullDeviceName, forKey: "full_device_name")
    try values.encode(osBuild, forKey: "os_build")
    try values.encode(osVersion, forKey: "os_version")
    try values.encodeIfPresent(serial, forKey: "serial")
    try values.encodeIfPresent(imei, forKey: "imei")
    try values.encodeIfPresent(ownerID, forKey: "owner_id")
    try values.encode(status, forKey: "status")
    try values.encodeIfPresent(registeredAt, forKey: "registered_at")
  }
}
