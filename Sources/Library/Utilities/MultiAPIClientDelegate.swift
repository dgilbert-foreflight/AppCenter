//
//  MultiAPIClientDelegate.swift
//  
//
//  Created by Danny Gilbert on 12/9/22.
//

import Foundation
import Get

public struct MultiAPIClientDelegate: APIClientDelegate {

  private let delegates: [APIClientDelegate]

  public init(_ delegates: [APIClientDelegate]) {
    self.delegates = delegates
  }

  public func client(_ client: APIClient, willSendRequest request: inout URLRequest) async throws {
    try await delegates.asyncForEach {
      try await $0.client(client, willSendRequest: &request)
    }
  }

  public func client(_ client: APIClient, validateResponse response: HTTPURLResponse, data: Data, task: URLSessionTask) throws {
    try delegates.forEach {
      try $0.client(client, validateResponse: response, data: data, task: task)
    }
  }

  public func client(_ client: APIClient, shouldRetry task: URLSessionTask, error: Swift.Error, attempts: Int) async throws -> Bool {
    return try await delegates.asyncReduce(false) { previousResult, delegate in
      guard previousResult == false else { return true }
      return try await delegate.client(client, shouldRetry: task, error: error, attempts: attempts)
    }
  }

  public func client(_ client: APIClient, makeURLFor url: String, query: [(String, String?)]?) throws -> URL? {
    return try delegates.reduce(into: nil) { previousURL, delegate in
      if let modifiedURL = previousURL {
        previousURL = try delegate.client(client, makeURLFor: modifiedURL.absoluteString, query: query)
      } else {
        previousURL = try delegate.client(client, makeURLFor: url, query: query)
      }
    }
  }
}
