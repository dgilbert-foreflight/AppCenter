//
//  AppCenterClient.swift
//
//
//  Created by Danny Gilbert on 12/9/22.
//

import Foundation
import Get

public typealias AppCenterToken = String

@propertyWrapper
public struct AppCenterClient {

  public var wrappedValue: APIClient

  public init(
    _ token: AppCenterToken
  ) {
    let configuration = APIClient.Configuration.init(
      baseURL: URL(string: "https://api.appcenter.ms")!,
      sessionConfiguration: .default,
      delegate: MultiAPIClientDelegate([
        AppCenterClientDelegate(token),
      ])
    )
    self.wrappedValue = APIClient(configuration: configuration)
  }
}

private struct AppCenterClientDelegate: APIClientDelegate {

  // Tokens are long-lived
  let token: AppCenterToken

  init(_ token: AppCenterToken) {
    self.token = token
  }

  /// Sets the necessary authorization header
  func client(_ client: APIClient, willSendRequest request: inout URLRequest) async throws {
    request.setValue(token, forHTTPHeaderField: "X-API-Token")
  }

  /// Decode API errors
  func client(_ client: APIClient, validateResponse response: HTTPURLResponse, data: Data, task: URLSessionTask) throws {
    let successfulHTTPCodes = 200..<300

    guard !successfulHTTPCodes.contains(response.statusCode) else {
      return
    }

    throw try JSONDecoder().decode(APIError.self, from: data)
  }
}

public extension API {

  static var token: AppCenterToken! {
    didSet {
      Self.client = AppCenterClient(token).wrappedValue
    }
  }

  @AppCenterClient(token)
  static var client: APIClient
}
