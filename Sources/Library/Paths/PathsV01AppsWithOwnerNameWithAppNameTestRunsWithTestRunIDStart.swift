// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName.TestRuns.WithTestRunID {
  public var start: Start {
    Start(path: path + "/start")
  }

  public struct Start {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/test_runs/{test_run_id}/start`
    public let path: String

    /// Starts test run
    public func post(_ body: PostRequest) -> Request<PostResponse> {
      Request(method: "POST", url: path, body: body, id: "test_startTestRun")
    }

    /// Test Cloud Test Run Start Result
    ///
    /// Result of starting a test run
    public struct PostResponse: Decodable {
      /// List with names of accepted devices
      public var acceptedDevices: [String]?
      /// List with names and descriptions of rejected devices
      public var rejectedDevices: [String]?

      public init(acceptedDevices: [String]? = nil, rejectedDevices: [String]? = nil) {
        self.acceptedDevices = acceptedDevices
        self.rejectedDevices = rejectedDevices
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.acceptedDevices = try values.decodeIfPresent([String].self, forKey: "accepted_devices")
        self.rejectedDevices = try values.decodeIfPresent([String].self, forKey: "rejected_devices")
      }
    }

    /// Test Cloud Start Test Run Options
    ///
    /// Options required to start the test run
    public struct PostRequest: Encodable {
      /// Test framework used by tests.
      public var testFramework: String
      /// Device selection string.
      public var deviceSelection: String
      /// Language that should be used to run tests.
      public var language: String?
      /// Locale that should be used to run tests.
      public var locale: String?
      /// Name of the test series.
      public var testSeries: String?
      /// A JSON dictionary with additional test parameters
      public var testParameters: [String: AnyJSON]?

      public init(testFramework: String, deviceSelection: String, language: String? = nil, locale: String? = nil, testSeries: String? = nil, testParameters: [String: AnyJSON]? = nil) {
        self.testFramework = testFramework
        self.deviceSelection = deviceSelection
        self.language = language
        self.locale = locale
        self.testSeries = testSeries
        self.testParameters = testParameters
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(testFramework, forKey: "test_framework")
        try values.encode(deviceSelection, forKey: "device_selection")
        try values.encodeIfPresent(language, forKey: "language")
        try values.encodeIfPresent(locale, forKey: "locale")
        try values.encodeIfPresent(testSeries, forKey: "test_series")
        try values.encodeIfPresent(testParameters, forKey: "test_parameters")
      }
    }
  }
}
