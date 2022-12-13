// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ErrorGroupsSearchResult: Codable {
  public var hasMoreResults: Bool?
  public var errorGroups: [ErrorGroup]?

  public struct ErrorGroup: Codable {
    public var errorGroupID: String
    public var appVersion: String
    public var appBuild: String?
    public var count: Int64
    public var deviceCount: Int64
    public var firstOccurrence: Date
    public var lastOccurrence: Date
    public var exceptionType: String?
    public var exceptionMessage: String?
    public var exceptionClassName: String?
    public var isExceptionClassMethod: Bool?
    public var exceptionMethod: String?
    public var isExceptionAppCode: Bool?
    public var exceptionFile: String?
    public var exceptionLine: String?
    public var codeRaw: String?
    public var reasonFrames: [ReasonFrame]?
    public var isHidden: Bool?

    public struct ReasonFrame: Codable {
      /// Name of the class
      public var className: String?
      /// Name of the method
      public var method: String?
      /// Is a class method
      public var isClassMethod: Bool?
      /// Name of the file
      public var file: String?
      /// Line number
      public var line: Int?
      /// This line isn't from any framework
      public var isAppCode: Bool?
      /// Name of the framework
      public var frameworkName: String?
      /// Formatted frame string
      public var codeFormatted: String?
      /// Unformatted Frame string
      public var codeRaw: String?
      /// Programming language of the frame
      public var language: Language?
      /// Parameters of the frames method
      public var methodParams: String?
      /// Exception type.
      public var exceptionType: String?
      /// OS exception type. (aka. SIGNAL)
      public var osExceptionType: String?

      /// Programming language of the frame
      public enum Language: String, Codable, CaseIterable {
        case javaScript = "JavaScript"
        case cSharp = "CSharp"
        case objectiveC = "Objective-C"
        case objectiveCpp = "Objective-Cpp"
        case cpp = "Cpp"
        case c = "C"
        case swift = "Swift"
        case java = "Java"
        case unknown = "Unknown"
      }

      public init(className: String? = nil, method: String? = nil, isClassMethod: Bool? = nil, file: String? = nil, line: Int? = nil, isAppCode: Bool? = nil, frameworkName: String? = nil, codeFormatted: String? = nil, codeRaw: String? = nil, language: Language? = nil, methodParams: String? = nil, exceptionType: String? = nil, osExceptionType: String? = nil) {
        self.className = className
        self.method = method
        self.isClassMethod = isClassMethod
        self.file = file
        self.line = line
        self.isAppCode = isAppCode
        self.frameworkName = frameworkName
        self.codeFormatted = codeFormatted
        self.codeRaw = codeRaw
        self.language = language
        self.methodParams = methodParams
        self.exceptionType = exceptionType
        self.osExceptionType = osExceptionType
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.className = try values.decodeIfPresent(String.self, forKey: "className")
        self.method = try values.decodeIfPresent(String.self, forKey: "method")
        self.isClassMethod = try values.decodeIfPresent(Bool.self, forKey: "classMethod")
        self.file = try values.decodeIfPresent(String.self, forKey: "file")
        self.line = try values.decodeIfPresent(Int.self, forKey: "line")
        self.isAppCode = try values.decodeIfPresent(Bool.self, forKey: "appCode")
        self.frameworkName = try values.decodeIfPresent(String.self, forKey: "frameworkName")
        self.codeFormatted = try values.decodeIfPresent(String.self, forKey: "codeFormatted")
        self.codeRaw = try values.decodeIfPresent(String.self, forKey: "codeRaw")
        self.language = try values.decodeIfPresent(Language.self, forKey: "language")
        self.methodParams = try values.decodeIfPresent(String.self, forKey: "methodParams")
        self.exceptionType = try values.decodeIfPresent(String.self, forKey: "exceptionType")
        self.osExceptionType = try values.decodeIfPresent(String.self, forKey: "osExceptionType")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(className, forKey: "className")
        try values.encodeIfPresent(method, forKey: "method")
        try values.encodeIfPresent(isClassMethod, forKey: "classMethod")
        try values.encodeIfPresent(file, forKey: "file")
        try values.encodeIfPresent(line, forKey: "line")
        try values.encodeIfPresent(isAppCode, forKey: "appCode")
        try values.encodeIfPresent(frameworkName, forKey: "frameworkName")
        try values.encodeIfPresent(codeFormatted, forKey: "codeFormatted")
        try values.encodeIfPresent(codeRaw, forKey: "codeRaw")
        try values.encodeIfPresent(language, forKey: "language")
        try values.encodeIfPresent(methodParams, forKey: "methodParams")
        try values.encodeIfPresent(exceptionType, forKey: "exceptionType")
        try values.encodeIfPresent(osExceptionType, forKey: "osExceptionType")
      }
    }

    public init(errorGroupID: String, appVersion: String, appBuild: String? = nil, count: Int64, deviceCount: Int64, firstOccurrence: Date, lastOccurrence: Date, exceptionType: String? = nil, exceptionMessage: String? = nil, exceptionClassName: String? = nil, isExceptionClassMethod: Bool? = nil, exceptionMethod: String? = nil, isExceptionAppCode: Bool? = nil, exceptionFile: String? = nil, exceptionLine: String? = nil, codeRaw: String? = nil, reasonFrames: [ReasonFrame]? = nil, isHidden: Bool? = nil) {
      self.errorGroupID = errorGroupID
      self.appVersion = appVersion
      self.appBuild = appBuild
      self.count = count
      self.deviceCount = deviceCount
      self.firstOccurrence = firstOccurrence
      self.lastOccurrence = lastOccurrence
      self.exceptionType = exceptionType
      self.exceptionMessage = exceptionMessage
      self.exceptionClassName = exceptionClassName
      self.isExceptionClassMethod = isExceptionClassMethod
      self.exceptionMethod = exceptionMethod
      self.isExceptionAppCode = isExceptionAppCode
      self.exceptionFile = exceptionFile
      self.exceptionLine = exceptionLine
      self.codeRaw = codeRaw
      self.reasonFrames = reasonFrames
      self.isHidden = isHidden
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.errorGroupID = try values.decode(String.self, forKey: "errorGroupId")
      self.appVersion = try values.decode(String.self, forKey: "appVersion")
      self.appBuild = try values.decodeIfPresent(String.self, forKey: "appBuild")
      self.count = try values.decode(Int64.self, forKey: "count")
      self.deviceCount = try values.decode(Int64.self, forKey: "deviceCount")
      self.firstOccurrence = try values.decode(Date.self, forKey: "firstOccurrence")
      self.lastOccurrence = try values.decode(Date.self, forKey: "lastOccurrence")
      self.exceptionType = try values.decodeIfPresent(String.self, forKey: "exceptionType")
      self.exceptionMessage = try values.decodeIfPresent(String.self, forKey: "exceptionMessage")
      self.exceptionClassName = try values.decodeIfPresent(String.self, forKey: "exceptionClassName")
      self.isExceptionClassMethod = try values.decodeIfPresent(Bool.self, forKey: "exceptionClassMethod")
      self.exceptionMethod = try values.decodeIfPresent(String.self, forKey: "exceptionMethod")
      self.isExceptionAppCode = try values.decodeIfPresent(Bool.self, forKey: "exceptionAppCode")
      self.exceptionFile = try values.decodeIfPresent(String.self, forKey: "exceptionFile")
      self.exceptionLine = try values.decodeIfPresent(String.self, forKey: "exceptionLine")
      self.codeRaw = try values.decodeIfPresent(String.self, forKey: "codeRaw")
      self.reasonFrames = try values.decodeIfPresent([ReasonFrame].self, forKey: "reasonFrames")
      self.isHidden = try values.decodeIfPresent(Bool.self, forKey: "hidden")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encode(errorGroupID, forKey: "errorGroupId")
      try values.encode(appVersion, forKey: "appVersion")
      try values.encodeIfPresent(appBuild, forKey: "appBuild")
      try values.encode(count, forKey: "count")
      try values.encode(deviceCount, forKey: "deviceCount")
      try values.encode(firstOccurrence, forKey: "firstOccurrence")
      try values.encode(lastOccurrence, forKey: "lastOccurrence")
      try values.encodeIfPresent(exceptionType, forKey: "exceptionType")
      try values.encodeIfPresent(exceptionMessage, forKey: "exceptionMessage")
      try values.encodeIfPresent(exceptionClassName, forKey: "exceptionClassName")
      try values.encodeIfPresent(isExceptionClassMethod, forKey: "exceptionClassMethod")
      try values.encodeIfPresent(exceptionMethod, forKey: "exceptionMethod")
      try values.encodeIfPresent(isExceptionAppCode, forKey: "exceptionAppCode")
      try values.encodeIfPresent(exceptionFile, forKey: "exceptionFile")
      try values.encodeIfPresent(exceptionLine, forKey: "exceptionLine")
      try values.encodeIfPresent(codeRaw, forKey: "codeRaw")
      try values.encodeIfPresent(reasonFrames, forKey: "reasonFrames")
      try values.encodeIfPresent(isHidden, forKey: "hidden")
    }
  }

  public init(hasMoreResults: Bool? = nil, errorGroups: [ErrorGroup]? = nil) {
    self.hasMoreResults = hasMoreResults
    self.errorGroups = errorGroups
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.hasMoreResults = try values.decodeIfPresent(Bool.self, forKey: "hasMoreResults")
    self.errorGroups = try values.decodeIfPresent([ErrorGroup].self, forKey: "errorGroups")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(hasMoreResults, forKey: "hasMoreResults")
    try values.encodeIfPresent(errorGroups, forKey: "errorGroups")
  }
}
