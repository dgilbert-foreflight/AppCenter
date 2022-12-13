// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var symbolUploads: SymbolUploads {
    SymbolUploads(path: path + "/symbol_uploads")
  }

  public struct SymbolUploads {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/symbol_uploads`
    public let path: String

    /// Gets a list of all uploads for the specified application
    public func get(parameters: GetParameters? = nil) -> Request<[GetResponseItem]> {
      Request(method: "GET", url: path, query: parameters?.asQuery, id: "symbolUploads_list")
    }

    /// A single symbol upload entity
    public struct GetResponseItem: Decodable {
      /// The id for the current symbol upload
      public var symbolUploadID: String
      /// The application that this symbol upload belongs to
      public var appID: String
      /// User information of the one who intitiated the symbol upload
      public var user: User?
      /// The current status for the symbol upload
      public var status: Status
      /// The type of the symbol for the current symbol upload
      public var symbolType: SymbolType
      /// The symbols found in the upload. This may be empty until the status is indexed
      public var symbolsUploaded: [SymbolsUploadedItem]?
      /// The origin of the symbol upload
      public var origin: Origin?
      /// The file name for the symbol upload
      public var fileName: String?
      /// The size of the file in Mebibytes. This may be 0 until the status is indexed
      public var fileSize: Double?
      /// When the symbol upload was committed, or last transaction time if not committed
      public var timestamp: Date?

      /// User information of the one who intitiated the symbol upload
      public struct User: Decodable {
        /// The email of the user
        public var email: String?
        /// The full name of the user. Might for example be first and last name
        public var displayName: String?

        public init(email: String? = nil, displayName: String? = nil) {
          self.email = email
          self.displayName = displayName
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.email = try values.decodeIfPresent(String.self, forKey: "email")
          self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
        }
      }

      /// The current status for the symbol upload
      public enum Status: String, Codable, CaseIterable {
        case created
        case committed
        case aborted
        case processing
        case indexed
        case failed
      }

      /// The type of the symbol for the current symbol upload
      public enum SymbolType: String, Codable, CaseIterable {
        case apple = "Apple"
        case javaScript = "JavaScript"
        case breakpad = "Breakpad"
        case androidProguard = "AndroidProguard"
        case uwp = "UWP"
      }

      public struct SymbolsUploadedItem: Decodable {
        /// The symbol id of the symbol binary
        public var symbolID: String
        /// The platform the symbol is associated with
        public var platform: String

        public init(symbolID: String, platform: String) {
          self.symbolID = symbolID
          self.platform = platform
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.symbolID = try values.decode(String.self, forKey: "symbol_id")
          self.platform = try values.decode(String.self, forKey: "platform")
        }
      }

      /// The origin of the symbol upload
      public enum Origin: String, Codable, CaseIterable {
        case user = "User"
        case system = "System"
      }

      public init(symbolUploadID: String, appID: String, user: User? = nil, status: Status, symbolType: SymbolType, symbolsUploaded: [SymbolsUploadedItem]? = nil, origin: Origin? = nil, fileName: String? = nil, fileSize: Double? = nil, timestamp: Date? = nil) {
        self.symbolUploadID = symbolUploadID
        self.appID = appID
        self.user = user
        self.status = status
        self.symbolType = symbolType
        self.symbolsUploaded = symbolsUploaded
        self.origin = origin
        self.fileName = fileName
        self.fileSize = fileSize
        self.timestamp = timestamp
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.symbolUploadID = try values.decode(String.self, forKey: "symbol_upload_id")
        self.appID = try values.decode(String.self, forKey: "app_id")
        self.user = try values.decodeIfPresent(User.self, forKey: "user")
        self.status = try values.decode(Status.self, forKey: "status")
        self.symbolType = try values.decode(SymbolType.self, forKey: "symbol_type")
        self.symbolsUploaded = try values.decodeIfPresent([SymbolsUploadedItem].self, forKey: "symbols_uploaded")
        self.origin = try values.decodeIfPresent(Origin.self, forKey: "origin")
        self.fileName = try values.decodeIfPresent(String.self, forKey: "file_name")
        self.fileSize = try values.decodeIfPresent(Double.self, forKey: "file_size")
        self.timestamp = try values.decodeIfPresent(Date.self, forKey: "timestamp")
      }
    }

    public struct GetParameters {
      public var top: Int64?
      public var status: Status?
      public var symbolType: SymbolType?

      public enum Status: String, Codable, CaseIterable {
        case all
        case uploaded
        case processed
      }

      public enum SymbolType: String, Codable, CaseIterable {
        case androidProguard = "AndroidProguard"
        case apple = "Apple"
        case breakpad = "Breakpad"
        case javaScript = "JavaScript"
        case uwp = "UWP"
      }

      public init(top: Int64? = nil, status: Status? = nil, symbolType: SymbolType? = nil) {
        self.top = top
        self.status = status
        self.symbolType = symbolType
      }

      public var asQuery: [(String, String?)] {
        let encoder = URLQueryEncoder()
        encoder.encode(top, forKey: "top")
        encoder.encode(status, forKey: "status")
        encoder.encode(symbolType, forKey: "symbol_type")
        return encoder.items
      }
    }

    /// Begins the symbol upload process for a new set of symbols for the specified application
    public func post(_ body: PostRequest) -> Request<[String: AnyJSON]> {
      Request(method: "POST", url: path, body: body, id: "symbolUploads_create")
    }

    /// A request containing information pertaining to starting a symbol upload process
    public struct PostRequest: Encodable {
      /// The type of the symbol for the current symbol upload
      public var symbolType: SymbolType
      /// The callback URL that the client can optionally provide to get status updates for the current symbol upload
      public var clientCallback: String?
      /// The file name for the symbol upload
      public var fileName: String?
      /// The build number. Optional for Apple. Required for Android.
      public var build: String?
      /// The version number. Optional for Apple. Required for Android.
      public var version: String?

      /// The type of the symbol for the current symbol upload
      public enum SymbolType: String, Codable, CaseIterable {
        case apple = "Apple"
        case javaScript = "JavaScript"
        case breakpad = "Breakpad"
        case androidProguard = "AndroidProguard"
        case uwp = "UWP"
      }

      public init(symbolType: SymbolType, clientCallback: String? = nil, fileName: String? = nil, build: String? = nil, version: String? = nil) {
        self.symbolType = symbolType
        self.clientCallback = clientCallback
        self.fileName = fileName
        self.build = build
        self.version = version
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(symbolType, forKey: "symbol_type")
        try values.encodeIfPresent(clientCallback, forKey: "client_callback")
        try values.encodeIfPresent(fileName, forKey: "file_name")
        try values.encodeIfPresent(build, forKey: "build")
        try values.encodeIfPresent(version, forKey: "version")
      }
    }
  }
}
