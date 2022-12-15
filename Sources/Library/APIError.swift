//
//  APIError.swift
//  
//
//  Created by Danny Gilbert on 12/13/22.
//

import Foundation

public struct APIError: Codable {
  public var details: ErrorDetails

  public struct ErrorDetails: Codable {
    public let message: String

    public init(
      message: String
    ) {
      self.message = message
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.message = try values.decode(String.self, forKey: "message")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(message, forKey: "message")
    }
  }

  public init(details: ErrorDetails) {
    self.details = details
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.details = try values.decode(ErrorDetails.self, forKey: "error")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(details, forKey: "error")
  }
}

extension APIError: LocalizedError, CustomStringConvertible {
  
  public var description: String {
    details.message
  }

  public var errorDescription: String? {
    details.message
  }

  public var failureReason: String? {
    details.message
  }
}
