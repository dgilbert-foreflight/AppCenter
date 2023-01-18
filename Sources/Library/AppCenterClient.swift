//
//  AppCenterClient.swift
//
//
//  Created by Danny Gilbert on 12/9/22.
//

import Foundation
import Get

// MARK: - Client
public extension API {
  
  static var clientProvider: (TokenProvider) -> APIClient = { provider in
      .init(
        baseURL: URL(string: "https://api.appcenter.ms")!
      ) {
        $0.delegate = AppCenterClientDelegate(provider)
      }
  }
  
  static var client: APIClient = clientProvider(.environment)
}

// MARK: - Client Request / Response Delegate
public struct AppCenterClientDelegate: APIClientDelegate {
  
  let provider: TokenProvider

  public init(_ provider: TokenProvider) { self.provider = provider }

  /// Sets the necessary authorization header
  public func client(_ client: APIClient, willSendRequest request: inout URLRequest) async throws {
    request.setValue(provider.token, forHTTPHeaderField: "X-API-Token")
  }

  /// Decode API errors
  public func client(_ client: APIClient, validateResponse response: HTTPURLResponse, data: Data, task: URLSessionTask) throws {
    let successfulHTTPCodes = 200..<300
    guard !successfulHTTPCodes.contains(response.statusCode) else { return }
    
    if let apiError = try? JSONDecoder().decode(APIError.self, from: data) {
      throw apiError
    } else {
      let statusCodeDetails = HTTPURLResponse
        .localizedString(forStatusCode: response.statusCode)
        .localizedUppercase
      throw APIError(details: .init(message: "\(response.statusCode): \(statusCodeDetails)"))
    }
  }
}

// MARK: App Center Token Provider
public struct TokenProvider {
  
  let provider: () -> String
  public var token: String { provider() }
  
  public init(provider: @escaping () -> String) { self.provider = provider }
}

// MARK: - Built-In Implementations
extension TokenProvider {
  
  public static var environmentKey: String = "APPCENTER_TOKEN"
  static let environment: TokenProvider = .init {
    let token = ProcessInfo.processInfo.environment[environmentKey] ?? ""
    assert(!token.isEmpty, "\(environmentKey) not set!")
    return token
  }
}
