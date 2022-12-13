// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Summary of a single test series
public struct TestSeries: Codable {
  /// Unique, human-readable identifier of the test series
  public var slug: String
  /// Name of the test series
  public var name: String
  /// Date of the latest test run that used this test series
  public var mostRecentActivity: String?
  /// Most recent test runs
  public var testRuns: [TestRun]?

  /// Test Run Summary
  ///
  /// Most important information about a test run.
  public struct TestRun: Codable {
    /// Date of the test run.
    public var date: String?
    /// Human-readable status of the test run.
    public var statusDescription: String?
    /// Number of failed tests
    public var failed: Double?
    /// Number of passed tests
    public var passed: Double?
    /// Tells whether the test run has completed
    public var isCompleted: Bool?

    public init(date: String? = nil, statusDescription: String? = nil, failed: Double? = nil, passed: Double? = nil, isCompleted: Bool? = nil) {
      self.date = date
      self.statusDescription = statusDescription
      self.failed = failed
      self.passed = passed
      self.isCompleted = isCompleted
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.date = try values.decodeIfPresent(String.self, forKey: "date")
      self.statusDescription = try values.decodeIfPresent(String.self, forKey: "statusDescription")
      self.failed = try values.decodeIfPresent(Double.self, forKey: "failed")
      self.passed = try values.decodeIfPresent(Double.self, forKey: "passed")
      self.isCompleted = try values.decodeIfPresent(Bool.self, forKey: "completed")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(date, forKey: "date")
      try values.encodeIfPresent(statusDescription, forKey: "statusDescription")
      try values.encodeIfPresent(failed, forKey: "failed")
      try values.encodeIfPresent(passed, forKey: "passed")
      try values.encodeIfPresent(isCompleted, forKey: "completed")
    }
  }

  public init(slug: String, name: String, mostRecentActivity: String? = nil, testRuns: [TestRun]? = nil) {
    self.slug = slug
    self.name = name
    self.mostRecentActivity = mostRecentActivity
    self.testRuns = testRuns
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.slug = try values.decode(String.self, forKey: "slug")
    self.name = try values.decode(String.self, forKey: "name")
    self.mostRecentActivity = try values.decodeIfPresent(String.self, forKey: "mostRecentActivity")
    self.testRuns = try values.decodeIfPresent([TestRun].self, forKey: "testRuns")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(slug, forKey: "slug")
    try values.encode(name, forKey: "name")
    try values.encodeIfPresent(mostRecentActivity, forKey: "mostRecentActivity")
    try values.encodeIfPresent(testRuns, forKey: "testRuns")
  }
}