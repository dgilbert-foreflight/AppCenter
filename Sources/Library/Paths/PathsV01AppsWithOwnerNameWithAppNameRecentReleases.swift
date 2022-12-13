// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension API.Apps.WithOwnerName.WithAppName {
  public var recentReleases: RecentReleases {
    RecentReleases(path: path + "/recent_releases")
  }

  public struct RecentReleases {
    /// Path: `/v0.1/apps/{owner_name}/{app_name}/recent_releases`
    public let path: String

    /// Get the latest release from every distribution group associated with an application.
    public var get: Request<[GetResponseItem]> {
      Request(method: "GET", url: path, id: "releases_listLatest")
    }

    /// Basic information on a release
    public struct GetResponseItem: Decodable, Identifiable {
      /// ID identifying this unique release.
      public var id: Int
      /// The release's version.<br>
      /// For iOS: CFBundleVersion from info.plist.<br>
      /// For Android: android:versionCode from AppManifest.xml.
      public var version: String
      /// The release's origin
      public var origin: Origin?
      /// The release's short version.<br>
      /// For iOS: CFBundleShortVersionString from info.plist.<br>
      /// For Android: android:versionName from AppManifest.xml.
      public var shortVersion: String
      /// This value determines the whether a release currently is enabled or disabled.
      public var isEnabled: Bool
      /// UTC time in ISO 8601 format of the uploaded time.
      public var uploadedAt: String
      /// OBSOLETE. Will be removed in next version. The destination type.<br>
      /// <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
      /// <b>store</b>: The release distributed to external stores and distribution_stores details will be returned. <br>
      public var destinationType: DestinationType?
      /// OBSOLETE. Will be removed in next version. A list of distribution groups that are associated with this release.
      public var distributionGroups: [DistributionGroup]?
      /// OBSOLETE. Will be removed in next version. A list of distribution stores that are associated with this release.
      public var distributionStores: [DistributionStore]?
      /// A list of distribution groups or stores.
      public var destinations: [Destination]?
      /// Build information for the release
      public var build: Build?
      /// This value determines if a release is external or not.
      public var isExternalBuild: Bool?
      /// The file extension of the main (user-uploaded) package file.
      public var fileExtension: String?

      /// The release's origin
      public enum Origin: String, Codable, CaseIterable {
        case hockeyapp
        case appcenter
      }

      /// OBSOLETE. Will be removed in next version. The destination type.<br>
      /// <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
      /// <b>store</b>: The release distributed to external stores and distribution_stores details will be returned. <br>
      public enum DestinationType: String, Codable, CaseIterable {
        case group
        case store
        case tester
      }

      public struct DistributionGroup: Decodable, Identifiable {
        /// ID identifying a unique distribution group.
        public var id: String
        /// A name identifying a unique distribution group.
        public var name: String?
        /// Is the containing release the latest one in this distribution group.
        public var isLatest: Bool?

        public init(id: String, name: String? = nil, isLatest: Bool? = nil) {
          self.id = id
          self.name = name
          self.isLatest = isLatest
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.id = try values.decode(String.self, forKey: "id")
          self.name = try values.decodeIfPresent(String.self, forKey: "name")
          self.isLatest = try values.decodeIfPresent(Bool.self, forKey: "is_latest")
        }
      }

      public struct DistributionStore: Decodable, Identifiable {
        /// ID identifying a unique distribution store.
        public var id: String
        /// A name identifying a unique distribution store.
        public var name: String?
        /// Type of the distribution store currently stores type can be intune, googleplay or windows.
        public var type: `Type`?
        /// Publishing status of the release in the store.
        public var publishingStatus: String?
        /// Is the containing release the latest one in this distribution store.
        public var isLatest: Bool?

        /// Type of the distribution store currently stores type can be intune, googleplay or windows.
        public enum `Type`: String, Codable, CaseIterable {
          case intune
          case googleplay
          case apple
          case `none`
        }

        public init(id: String, name: String? = nil, type: `Type`? = nil, publishingStatus: String? = nil, isLatest: Bool? = nil) {
          self.id = id
          self.name = name
          self.type = type
          self.publishingStatus = publishingStatus
          self.isLatest = isLatest
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.id = try values.decode(String.self, forKey: "id")
          self.name = try values.decodeIfPresent(String.self, forKey: "name")
          self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
          self.publishingStatus = try values.decodeIfPresent(String.self, forKey: "publishing_status")
          self.isLatest = try values.decodeIfPresent(Bool.self, forKey: "is_latest")
        }
      }

      public struct Destination: Decodable, Identifiable {
        public var a: A
        public var b: B
        /// Name of a distribution group / distribution store. The release will be associated with this distribution group or store. If the distribution group / store doesn't exist a 400 is returned. If both distribution group / store name and id are passed, the id is taking precedence.
        public var name: String?
        /// Id of a distribution group / store. The release will be associated with this distribution group / store. If the distribution group / store doesn't exist a 400 is returned. If both distribution group / store name and id are passed, the id is taking precedence.
        public var id: String?
        /// Destination can be either store or group.
        public var destinationType: DestinationType?
        /// Display name for the group or tester
        public var displayName: String?

        public struct A: Decodable, Identifiable {
          /// ID identifying a unique distribution group.
          public var id: String
          /// A name identifying a unique distribution group.
          public var name: String?
          /// Is the containing release the latest one in this distribution group.
          public var isLatest: Bool?

          public init(id: String, name: String? = nil, isLatest: Bool? = nil) {
            self.id = id
            self.name = name
            self.isLatest = isLatest
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.id = try values.decode(String.self, forKey: "id")
            self.name = try values.decodeIfPresent(String.self, forKey: "name")
            self.isLatest = try values.decodeIfPresent(Bool.self, forKey: "is_latest")
          }
        }

        public struct B: Decodable, Identifiable {
          /// ID identifying a unique distribution store.
          public var id: String
          /// A name identifying a unique distribution store.
          public var name: String?
          /// Type of the distribution store currently stores type can be intune, googleplay or windows.
          public var type: `Type`?
          /// Publishing status of the release in the store.
          public var publishingStatus: String?
          /// Is the containing release the latest one in this distribution store.
          public var isLatest: Bool?

          /// Type of the distribution store currently stores type can be intune, googleplay or windows.
          public enum `Type`: String, Codable, CaseIterable {
            case intune
            case googleplay
            case apple
            case `none`
          }

          public init(id: String, name: String? = nil, type: `Type`? = nil, publishingStatus: String? = nil, isLatest: Bool? = nil) {
            self.id = id
            self.name = name
            self.type = type
            self.publishingStatus = publishingStatus
            self.isLatest = isLatest
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.id = try values.decode(String.self, forKey: "id")
            self.name = try values.decodeIfPresent(String.self, forKey: "name")
            self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
            self.publishingStatus = try values.decodeIfPresent(String.self, forKey: "publishing_status")
            self.isLatest = try values.decodeIfPresent(Bool.self, forKey: "is_latest")
          }
        }

        /// Destination can be either store or group.
        public enum DestinationType: String, Codable, CaseIterable {
          case group
          case store
          case tester
        }

        public init(a: A, b: B, name: String? = nil, id: String? = nil, destinationType: DestinationType? = nil, displayName: String? = nil) {
          self.a = a
          self.b = b
          self.name = name
          self.id = id
          self.destinationType = destinationType
          self.displayName = displayName
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.a = try values.decode(A.self, forKey: "a")
          self.b = try values.decode(B.self, forKey: "b")
          self.name = try values.decodeIfPresent(String.self, forKey: "name")
          self.id = try values.decodeIfPresent(String.self, forKey: "id")
          self.destinationType = try values.decodeIfPresent(DestinationType.self, forKey: "destination_type")
          self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
        }
      }

      /// Build information for the release
      public struct Build: Decodable {
        /// The branch name of the build producing the release
        public var branchName: String?
        /// The commit hash of the build producing the release
        public var commitHash: String?
        /// The commit message of the build producing the release
        public var commitMessage: String?

        public init(branchName: String? = nil, commitHash: String? = nil, commitMessage: String? = nil) {
          self.branchName = branchName
          self.commitHash = commitHash
          self.commitMessage = commitMessage
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.branchName = try values.decodeIfPresent(String.self, forKey: "branch_name")
          self.commitHash = try values.decodeIfPresent(String.self, forKey: "commit_hash")
          self.commitMessage = try values.decodeIfPresent(String.self, forKey: "commit_message")
        }
      }

      public init(id: Int, version: String, origin: Origin? = nil, shortVersion: String, isEnabled: Bool, uploadedAt: String, destinationType: DestinationType? = nil, distributionGroups: [DistributionGroup]? = nil, distributionStores: [DistributionStore]? = nil, destinations: [Destination]? = nil, build: Build? = nil, isExternalBuild: Bool? = nil, fileExtension: String? = nil) {
        self.id = id
        self.version = version
        self.origin = origin
        self.shortVersion = shortVersion
        self.isEnabled = isEnabled
        self.uploadedAt = uploadedAt
        self.destinationType = destinationType
        self.distributionGroups = distributionGroups
        self.distributionStores = distributionStores
        self.destinations = destinations
        self.build = build
        self.isExternalBuild = isExternalBuild
        self.fileExtension = fileExtension
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.version = try values.decode(String.self, forKey: "version")
        self.origin = try values.decodeIfPresent(Origin.self, forKey: "origin")
        self.shortVersion = try values.decode(String.self, forKey: "short_version")
        self.isEnabled = try values.decode(Bool.self, forKey: "enabled")
        self.uploadedAt = try values.decode(String.self, forKey: "uploaded_at")
        self.destinationType = try values.decodeIfPresent(DestinationType.self, forKey: "destination_type")
        self.distributionGroups = try values.decodeIfPresent([DistributionGroup].self, forKey: "distribution_groups")
        self.distributionStores = try values.decodeIfPresent([DistributionStore].self, forKey: "distribution_stores")
        self.destinations = try values.decodeIfPresent([Destination].self, forKey: "destinations")
        self.build = try values.decodeIfPresent(Build.self, forKey: "build")
        self.isExternalBuild = try values.decodeIfPresent(Bool.self, forKey: "is_external_build")
        self.fileExtension = try values.decodeIfPresent(String.self, forKey: "file_extension")
      }
    }
  }
}
