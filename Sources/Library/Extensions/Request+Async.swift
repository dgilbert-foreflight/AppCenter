//
//  Request+Async.swift
//  
//
//  Created by Danny Gilbert on 12/9/22.
//

import Foundation
import Get

public extension Request {

  func download(using client: APIClient) async throws -> Get.Response<URL> {
    try await client.download(for: self)
  }

  var location: URL {
    get async throws {
      try await download(using: API.client)
        .location
    }
  }
}

public extension Request where Response: Decodable {

  func send(using client: APIClient) async throws -> Get.Response<Response> {
    try await client.send(self)
  }

  var response: Get.Response<Response> {
    get async throws {
      try await send(using: API.client)
    }
  }

  var value: Response {
    get async throws {
      try await self.response.value
    }
  }
}

public extension Request where Response == Void {

  func send(using client: APIClient) async throws -> Get.Response<Response> {
    try await client.send(self)
  }

  var response: Get.Response<Void> {
    get async throws {
      try await send(using: API.client)
    }
  }

  var value: Void {
    get async throws {
      try await self.response.value
    }
  }
}

public extension Request where Response == URL {

  var response: Get.Response<URL> {
    get async throws {
      try await download(using: API.client)
    }
  }
}

