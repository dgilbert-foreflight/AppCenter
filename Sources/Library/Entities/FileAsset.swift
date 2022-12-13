// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct FileAsset: Codable, Identifiable {
  public var id: String?
  public var location: String?
  public var token: String?
  public var uploadDomain: String?
  public var uploadWindowLocation: String?
  public var urlEncodedToken: String?

  public init(id: String? = nil, location: String? = nil, token: String? = nil, uploadDomain: String? = nil, uploadWindowLocation: String? = nil, urlEncodedToken: String? = nil) {
    self.id = id
    self.location = location
    self.token = token
    self.uploadDomain = uploadDomain
    self.uploadWindowLocation = uploadWindowLocation
    self.urlEncodedToken = urlEncodedToken
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.id = try values.decodeIfPresent(String.self, forKey: "id")
    self.location = try values.decodeIfPresent(String.self, forKey: "location")
    self.token = try values.decodeIfPresent(String.self, forKey: "token")
    self.uploadDomain = try values.decodeIfPresent(String.self, forKey: "uploadDomain")
    self.uploadWindowLocation = try values.decodeIfPresent(String.self, forKey: "uploadWindowLocation")
    self.urlEncodedToken = try values.decodeIfPresent(String.self, forKey: "urlEncodedToken")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(location, forKey: "location")
    try values.encodeIfPresent(token, forKey: "token")
    try values.encodeIfPresent(uploadDomain, forKey: "uploadDomain")
    try values.encodeIfPresent(uploadWindowLocation, forKey: "uploadWindowLocation")
    try values.encodeIfPresent(urlEncodedToken, forKey: "urlEncodedToken")
  }
}