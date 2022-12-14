// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A thread representation
public struct Thread: Codable {
  /// Name of the thread
  public var title: String
  /// Frames of that thread
  public var frames: [Frame]
  /// A exception
  public var exception: Exception?
  /// Shows if a thread is relevant or not. Is false if all frames are non relevant, otherwise true
  public var isRelevant: Bool?
  /// SDK/Platform this thread is beeing generated from
  public var platform: Platform?
  /// True if this thread crashed
  public var isCrashed: Bool?

  /// A single frame of a stack trace
  public struct Frame: Codable {
    /// Address of the frame
    public var address: String?
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
    public var isAppCode: Bool
    /// Name of the framework
    public var frameworkName: String?
    /// Raw frame string
    public var codeRaw: String
    /// Formatted frame string
    public var codeFormatted: String
    /// Programming language of the frame
    public var language: Language?
    /// Frame should be shown always
    public var isRelevant: Bool?
    /// Parameters of the frames method
    public var methodParams: String?

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

    public init(address: String? = nil, className: String? = nil, method: String? = nil, isClassMethod: Bool? = nil, file: String? = nil, line: Int? = nil, isAppCode: Bool, frameworkName: String? = nil, codeRaw: String, codeFormatted: String, language: Language? = nil, isRelevant: Bool? = nil, methodParams: String? = nil) {
      self.address = address
      self.className = className
      self.method = method
      self.isClassMethod = isClassMethod
      self.file = file
      self.line = line
      self.isAppCode = isAppCode
      self.frameworkName = frameworkName
      self.codeRaw = codeRaw
      self.codeFormatted = codeFormatted
      self.language = language
      self.isRelevant = isRelevant
      self.methodParams = methodParams
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.address = try values.decodeIfPresent(String.self, forKey: "address")
      self.className = try values.decodeIfPresent(String.self, forKey: "class_name")
      self.method = try values.decodeIfPresent(String.self, forKey: "method")
      self.isClassMethod = try values.decodeIfPresent(Bool.self, forKey: "class_method")
      self.file = try values.decodeIfPresent(String.self, forKey: "file")
      self.line = try values.decodeIfPresent(Int.self, forKey: "line")
      self.isAppCode = try values.decode(Bool.self, forKey: "app_code")
      self.frameworkName = try values.decodeIfPresent(String.self, forKey: "framework_name")
      self.codeRaw = try values.decode(String.self, forKey: "code_raw")
      self.codeFormatted = try values.decode(String.self, forKey: "code_formatted")
      self.language = try values.decodeIfPresent(Language.self, forKey: "language")
      self.isRelevant = try values.decodeIfPresent(Bool.self, forKey: "relevant")
      self.methodParams = try values.decodeIfPresent(String.self, forKey: "method_params")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(address, forKey: "address")
      try values.encodeIfPresent(className, forKey: "class_name")
      try values.encodeIfPresent(method, forKey: "method")
      try values.encodeIfPresent(isClassMethod, forKey: "class_method")
      try values.encodeIfPresent(file, forKey: "file")
      try values.encodeIfPresent(line, forKey: "line")
      try values.encode(isAppCode, forKey: "app_code")
      try values.encodeIfPresent(frameworkName, forKey: "framework_name")
      try values.encode(codeRaw, forKey: "code_raw")
      try values.encode(codeFormatted, forKey: "code_formatted")
      try values.encodeIfPresent(language, forKey: "language")
      try values.encodeIfPresent(isRelevant, forKey: "relevant")
      try values.encodeIfPresent(methodParams, forKey: "method_params")
    }
  }

  /// SDK/Platform this thread is beeing generated from
  public enum Platform: String, Codable, CaseIterable {
    case ios
    case android
    case xamarin
    case reactNative = "react-native"
    case ndk
    case unity
    case other
  }

  public init(title: String, frames: [Frame], exception: Exception? = nil, isRelevant: Bool? = nil, platform: Platform? = nil, isCrashed: Bool? = nil) {
    self.title = title
    self.frames = frames
    self.exception = exception
    self.isRelevant = isRelevant
    self.platform = platform
    self.isCrashed = isCrashed
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.title = try values.decode(String.self, forKey: "title")
    self.frames = try values.decode([Frame].self, forKey: "frames")
    self.exception = try values.decodeIfPresent(Exception.self, forKey: "exception")
    self.isRelevant = try values.decodeIfPresent(Bool.self, forKey: "relevant")
    self.platform = try values.decodeIfPresent(Platform.self, forKey: "platform")
    self.isCrashed = try values.decodeIfPresent(Bool.self, forKey: "crashed")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(title, forKey: "title")
    try values.encode(frames, forKey: "frames")
    try values.encodeIfPresent(exception, forKey: "exception")
    try values.encodeIfPresent(isRelevant, forKey: "relevant")
    try values.encodeIfPresent(platform, forKey: "platform")
    try values.encodeIfPresent(isCrashed, forKey: "crashed")
  }
}
