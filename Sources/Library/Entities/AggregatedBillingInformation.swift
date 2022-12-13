// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Aggregated Billing Information for a user or an organization
public struct AggregatedBillingInformation: Codable, Identifiable {
  /// Version of the Billing Information schema
  public var version: String?
  /// The ISO 8601 datetime of last modification
  public var timestamp: String?
  /// ID of the user or organization
  public var id: String?
  /// Billing Plans section in the Billing Information
  public var billingPlans: BillingPlans?
  /// Usage section in the Billing Information
  public var usage: Usage?
  /// Unique identifier for the Azure subscription used for billing
  public var azureSubscriptionID: String?
  /// State of the Azure subscription used for billing
  public var azureSubscriptionState: AzureSubscriptionState?

  /// Billing Plans section in the Billing Information
  public struct BillingPlans: Codable {
    /// Billing Plans for a single service
    public var buildService: BuildService?
    /// Billing Plans for a single service
    public var testService: TestService?

    /// Billing Plans for a single service
    public struct BuildService: Codable {
      /// Can customer select trial plan for that service (if it exists)?
      public var canSelectTrialPlan: Bool?
      /// Expiration time of the last selected trial plan. Will be null if trial plan was not used.
      public var lastTrialPlanExpirationTime: String?
      /// Billing plans for a given period
      public var currentBillingPeriod: CurrentBillingPeriod?

      /// Billing plans for a given period
      public struct CurrentBillingPeriod: Codable {
        /// Inclusive start of the period
        public var startTime: String?
        /// Exclusive end of the period.
        public var endTime: String?
        /// Selection of a billing plan
        public var byAccount: ByAccount?

        /// Selection of a billing plan
        public struct ByAccount: Codable {
          /// Number of instances of the billing plan.
          public var count: Int?
          /// Billing Plan
          public var plan: Plan?

          /// Billing Plan
          public struct Plan: Codable, Identifiable {
            /// The Billing Plan ID
            public var id: String?
            /// Version of the Billing Plan schema
            public var version: String?
            /// Price of the Billing Plan
            public var price: Double?
            /// Service that receives payments for this billing plan.
            public var paymentSource: PaymentSource?
            /// Name of the service that the plan applies to.
            public var service: Service?
            /// A collection of named numeric values
            public var limits: [String: Double]?
            /// Collection of attribute values.
            public var attributes: [String: [String: AnyJSON]]?
            public var parentID: String?

            /// Service that receives payments for this billing plan.
            public enum PaymentSource: String, Codable, CaseIterable {
              case `none` = "None"
              case appCenter = "AppCenter"
              case gitHub = "GitHub"
              case xtc = "Xtc"
            }

            /// Name of the service that the plan applies to.
            public enum Service: String, Codable, CaseIterable {
              case build = "Build"
              case test = "Test"
            }

            public init(id: String? = nil, version: String? = nil, price: Double? = nil, paymentSource: PaymentSource? = nil, service: Service? = nil, limits: [String: Double]? = nil, attributes: [String: [String: AnyJSON]]? = nil, parentID: String? = nil) {
              self.id = id
              self.version = version
              self.price = price
              self.paymentSource = paymentSource
              self.service = service
              self.limits = limits
              self.attributes = attributes
              self.parentID = parentID
            }

            public init(from decoder: Decoder) throws {
              let values = try decoder.container(keyedBy: StringCodingKey.self)
              self.id = try values.decodeIfPresent(String.self, forKey: "id")
              self.version = try values.decodeIfPresent(String.self, forKey: "version")
              self.price = try values.decodeIfPresent(Double.self, forKey: "price")
              self.paymentSource = try values.decodeIfPresent(PaymentSource.self, forKey: "paymentSource")
              self.service = try values.decodeIfPresent(Service.self, forKey: "service")
              self.limits = try values.decodeIfPresent([String: Double].self, forKey: "limits")
              self.attributes = try values.decodeIfPresent([String: [String: AnyJSON]].self, forKey: "attributes")
              self.parentID = try values.decodeIfPresent(String.self, forKey: "parentId")
            }

            public func encode(to encoder: Encoder) throws {
              var values = encoder.container(keyedBy: StringCodingKey.self)
              try values.encodeIfPresent(id, forKey: "id")
              try values.encodeIfPresent(version, forKey: "version")
              try values.encodeIfPresent(price, forKey: "price")
              try values.encodeIfPresent(paymentSource, forKey: "paymentSource")
              try values.encodeIfPresent(service, forKey: "service")
              try values.encodeIfPresent(limits, forKey: "limits")
              try values.encodeIfPresent(attributes, forKey: "attributes")
              try values.encodeIfPresent(parentID, forKey: "parentId")
            }
          }

          public init(count: Int? = nil, plan: Plan? = nil) {
            self.count = count
            self.plan = plan
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.count = try values.decodeIfPresent(Int.self, forKey: "count")
            self.plan = try values.decodeIfPresent(Plan.self, forKey: "plan")
          }

          public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(count, forKey: "count")
            try values.encodeIfPresent(plan, forKey: "plan")
          }
        }

        public init(startTime: String? = nil, endTime: String? = nil, byAccount: ByAccount? = nil) {
          self.startTime = startTime
          self.endTime = endTime
          self.byAccount = byAccount
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.startTime = try values.decodeIfPresent(String.self, forKey: "startTime")
          self.endTime = try values.decodeIfPresent(String.self, forKey: "endTime")
          self.byAccount = try values.decodeIfPresent(ByAccount.self, forKey: "byAccount")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encodeIfPresent(startTime, forKey: "startTime")
          try values.encodeIfPresent(endTime, forKey: "endTime")
          try values.encodeIfPresent(byAccount, forKey: "byAccount")
        }
      }

      public init(canSelectTrialPlan: Bool? = nil, lastTrialPlanExpirationTime: String? = nil, currentBillingPeriod: CurrentBillingPeriod? = nil) {
        self.canSelectTrialPlan = canSelectTrialPlan
        self.lastTrialPlanExpirationTime = lastTrialPlanExpirationTime
        self.currentBillingPeriod = currentBillingPeriod
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.canSelectTrialPlan = try values.decodeIfPresent(Bool.self, forKey: "canSelectTrialPlan")
        self.lastTrialPlanExpirationTime = try values.decodeIfPresent(String.self, forKey: "lastTrialPlanExpirationTime")
        self.currentBillingPeriod = try values.decodeIfPresent(CurrentBillingPeriod.self, forKey: "currentBillingPeriod")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(canSelectTrialPlan, forKey: "canSelectTrialPlan")
        try values.encodeIfPresent(lastTrialPlanExpirationTime, forKey: "lastTrialPlanExpirationTime")
        try values.encodeIfPresent(currentBillingPeriod, forKey: "currentBillingPeriod")
      }
    }

    /// Billing Plans for a single service
    public struct TestService: Codable {
      /// Can customer select trial plan for that service (if it exists)?
      public var canSelectTrialPlan: Bool?
      /// Expiration time of the last selected trial plan. Will be null if trial plan was not used.
      public var lastTrialPlanExpirationTime: String?
      /// Billing plans for a given period
      public var currentBillingPeriod: CurrentBillingPeriod?

      /// Billing plans for a given period
      public struct CurrentBillingPeriod: Codable {
        /// Inclusive start of the period
        public var startTime: String?
        /// Exclusive end of the period.
        public var endTime: String?
        /// Selection of a billing plan
        public var byAccount: ByAccount?

        /// Selection of a billing plan
        public struct ByAccount: Codable {
          /// Number of instances of the billing plan.
          public var count: Int?
          /// Billing Plan
          public var plan: Plan?

          /// Billing Plan
          public struct Plan: Codable, Identifiable {
            /// The Billing Plan ID
            public var id: String?
            /// Version of the Billing Plan schema
            public var version: String?
            /// Price of the Billing Plan
            public var price: Double?
            /// Service that receives payments for this billing plan.
            public var paymentSource: PaymentSource?
            /// Name of the service that the plan applies to.
            public var service: Service?
            /// A collection of named numeric values
            public var limits: [String: Double]?
            /// Collection of attribute values.
            public var attributes: [String: [String: AnyJSON]]?
            public var parentID: String?

            /// Service that receives payments for this billing plan.
            public enum PaymentSource: String, Codable, CaseIterable {
              case `none` = "None"
              case appCenter = "AppCenter"
              case gitHub = "GitHub"
              case xtc = "Xtc"
            }

            /// Name of the service that the plan applies to.
            public enum Service: String, Codable, CaseIterable {
              case build = "Build"
              case test = "Test"
            }

            public init(id: String? = nil, version: String? = nil, price: Double? = nil, paymentSource: PaymentSource? = nil, service: Service? = nil, limits: [String: Double]? = nil, attributes: [String: [String: AnyJSON]]? = nil, parentID: String? = nil) {
              self.id = id
              self.version = version
              self.price = price
              self.paymentSource = paymentSource
              self.service = service
              self.limits = limits
              self.attributes = attributes
              self.parentID = parentID
            }

            public init(from decoder: Decoder) throws {
              let values = try decoder.container(keyedBy: StringCodingKey.self)
              self.id = try values.decodeIfPresent(String.self, forKey: "id")
              self.version = try values.decodeIfPresent(String.self, forKey: "version")
              self.price = try values.decodeIfPresent(Double.self, forKey: "price")
              self.paymentSource = try values.decodeIfPresent(PaymentSource.self, forKey: "paymentSource")
              self.service = try values.decodeIfPresent(Service.self, forKey: "service")
              self.limits = try values.decodeIfPresent([String: Double].self, forKey: "limits")
              self.attributes = try values.decodeIfPresent([String: [String: AnyJSON]].self, forKey: "attributes")
              self.parentID = try values.decodeIfPresent(String.self, forKey: "parentId")
            }

            public func encode(to encoder: Encoder) throws {
              var values = encoder.container(keyedBy: StringCodingKey.self)
              try values.encodeIfPresent(id, forKey: "id")
              try values.encodeIfPresent(version, forKey: "version")
              try values.encodeIfPresent(price, forKey: "price")
              try values.encodeIfPresent(paymentSource, forKey: "paymentSource")
              try values.encodeIfPresent(service, forKey: "service")
              try values.encodeIfPresent(limits, forKey: "limits")
              try values.encodeIfPresent(attributes, forKey: "attributes")
              try values.encodeIfPresent(parentID, forKey: "parentId")
            }
          }

          public init(count: Int? = nil, plan: Plan? = nil) {
            self.count = count
            self.plan = plan
          }

          public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.count = try values.decodeIfPresent(Int.self, forKey: "count")
            self.plan = try values.decodeIfPresent(Plan.self, forKey: "plan")
          }

          public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(count, forKey: "count")
            try values.encodeIfPresent(plan, forKey: "plan")
          }
        }

        public init(startTime: String? = nil, endTime: String? = nil, byAccount: ByAccount? = nil) {
          self.startTime = startTime
          self.endTime = endTime
          self.byAccount = byAccount
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.startTime = try values.decodeIfPresent(String.self, forKey: "startTime")
          self.endTime = try values.decodeIfPresent(String.self, forKey: "endTime")
          self.byAccount = try values.decodeIfPresent(ByAccount.self, forKey: "byAccount")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encodeIfPresent(startTime, forKey: "startTime")
          try values.encodeIfPresent(endTime, forKey: "endTime")
          try values.encodeIfPresent(byAccount, forKey: "byAccount")
        }
      }

      public init(canSelectTrialPlan: Bool? = nil, lastTrialPlanExpirationTime: String? = nil, currentBillingPeriod: CurrentBillingPeriod? = nil) {
        self.canSelectTrialPlan = canSelectTrialPlan
        self.lastTrialPlanExpirationTime = lastTrialPlanExpirationTime
        self.currentBillingPeriod = currentBillingPeriod
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.canSelectTrialPlan = try values.decodeIfPresent(Bool.self, forKey: "canSelectTrialPlan")
        self.lastTrialPlanExpirationTime = try values.decodeIfPresent(String.self, forKey: "lastTrialPlanExpirationTime")
        self.currentBillingPeriod = try values.decodeIfPresent(CurrentBillingPeriod.self, forKey: "currentBillingPeriod")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(canSelectTrialPlan, forKey: "canSelectTrialPlan")
        try values.encodeIfPresent(lastTrialPlanExpirationTime, forKey: "lastTrialPlanExpirationTime")
        try values.encodeIfPresent(currentBillingPeriod, forKey: "currentBillingPeriod")
      }
    }

    public init(buildService: BuildService? = nil, testService: TestService? = nil) {
      self.buildService = buildService
      self.testService = testService
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.buildService = try values.decodeIfPresent(BuildService.self, forKey: "buildService")
      self.testService = try values.decodeIfPresent(TestService.self, forKey: "testService")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(buildService, forKey: "buildService")
      try values.encodeIfPresent(testService, forKey: "testService")
    }
  }

  /// Usage section in the Billing Information
  public struct Usage: Codable {
    /// Resource usage for a single Mobile Center service
    public var buildService: BuildService?
    /// Resource usage for a single Mobile Center service
    public var testService: TestService?

    /// Resource usage for a single Mobile Center service
    public struct BuildService: Codable {
      /// Usage for a single period
      public var currentUsagePeriod: CurrentUsagePeriod?

      /// Usage for a single period
      public struct CurrentUsagePeriod: Codable {
        /// Inclusive start time of the usage period
        public var startTime: String?
        /// Exclusive end time of the usage period.
        public var endTime: String?
        /// A collection of named numeric values
        public var byAccount: [String: Double]?
        /// A collection of  named numeric values grouped by app
        public var byApp: [String: [String: Double]]?

        public init(startTime: String? = nil, endTime: String? = nil, byAccount: [String: Double]? = nil, byApp: [String: [String: Double]]? = nil) {
          self.startTime = startTime
          self.endTime = endTime
          self.byAccount = byAccount
          self.byApp = byApp
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.startTime = try values.decodeIfPresent(String.self, forKey: "startTime")
          self.endTime = try values.decodeIfPresent(String.self, forKey: "endTime")
          self.byAccount = try values.decodeIfPresent([String: Double].self, forKey: "byAccount")
          self.byApp = try values.decodeIfPresent([String: [String: Double]].self, forKey: "byApp")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encodeIfPresent(startTime, forKey: "startTime")
          try values.encodeIfPresent(endTime, forKey: "endTime")
          try values.encodeIfPresent(byAccount, forKey: "byAccount")
          try values.encodeIfPresent(byApp, forKey: "byApp")
        }
      }

      public init(currentUsagePeriod: CurrentUsagePeriod? = nil) {
        self.currentUsagePeriod = currentUsagePeriod
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.currentUsagePeriod = try values.decodeIfPresent(CurrentUsagePeriod.self, forKey: "currentUsagePeriod")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(currentUsagePeriod, forKey: "currentUsagePeriod")
      }
    }

    /// Resource usage for a single Mobile Center service
    public struct TestService: Codable {
      /// Usage for a single period
      public var currentUsagePeriod: CurrentUsagePeriod?

      /// Usage for a single period
      public struct CurrentUsagePeriod: Codable {
        /// Inclusive start time of the usage period
        public var startTime: String?
        /// Exclusive end time of the usage period.
        public var endTime: String?
        /// A collection of named numeric values
        public var byAccount: [String: Double]?
        /// A collection of  named numeric values grouped by app
        public var byApp: [String: [String: Double]]?

        public init(startTime: String? = nil, endTime: String? = nil, byAccount: [String: Double]? = nil, byApp: [String: [String: Double]]? = nil) {
          self.startTime = startTime
          self.endTime = endTime
          self.byAccount = byAccount
          self.byApp = byApp
        }

        public init(from decoder: Decoder) throws {
          let values = try decoder.container(keyedBy: StringCodingKey.self)
          self.startTime = try values.decodeIfPresent(String.self, forKey: "startTime")
          self.endTime = try values.decodeIfPresent(String.self, forKey: "endTime")
          self.byAccount = try values.decodeIfPresent([String: Double].self, forKey: "byAccount")
          self.byApp = try values.decodeIfPresent([String: [String: Double]].self, forKey: "byApp")
        }

        public func encode(to encoder: Encoder) throws {
          var values = encoder.container(keyedBy: StringCodingKey.self)
          try values.encodeIfPresent(startTime, forKey: "startTime")
          try values.encodeIfPresent(endTime, forKey: "endTime")
          try values.encodeIfPresent(byAccount, forKey: "byAccount")
          try values.encodeIfPresent(byApp, forKey: "byApp")
        }
      }

      public init(currentUsagePeriod: CurrentUsagePeriod? = nil) {
        self.currentUsagePeriod = currentUsagePeriod
      }

      public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.currentUsagePeriod = try values.decodeIfPresent(CurrentUsagePeriod.self, forKey: "currentUsagePeriod")
      }

      public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(currentUsagePeriod, forKey: "currentUsagePeriod")
      }
    }

    public init(buildService: BuildService? = nil, testService: TestService? = nil) {
      self.buildService = buildService
      self.testService = testService
    }

    public init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: StringCodingKey.self)
      self.buildService = try values.decodeIfPresent(BuildService.self, forKey: "buildService")
      self.testService = try values.decodeIfPresent(TestService.self, forKey: "testService")
    }

    public func encode(to encoder: Encoder) throws {
      var values = encoder.container(keyedBy: StringCodingKey.self)
      try values.encodeIfPresent(buildService, forKey: "buildService")
      try values.encodeIfPresent(testService, forKey: "testService")
    }
  }

  /// State of the Azure subscription used for billing
  public enum AzureSubscriptionState: String, Codable, CaseIterable {
    case enabled = "Enabled"
    case disabled = "Disabled"
    case notSet = "NotSet"
  }

  public init(version: String? = nil, timestamp: String? = nil, id: String? = nil, billingPlans: BillingPlans? = nil, usage: Usage? = nil, azureSubscriptionID: String? = nil, azureSubscriptionState: AzureSubscriptionState? = nil) {
    self.version = version
    self.timestamp = timestamp
    self.id = id
    self.billingPlans = billingPlans
    self.usage = usage
    self.azureSubscriptionID = azureSubscriptionID
    self.azureSubscriptionState = azureSubscriptionState
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.version = try values.decodeIfPresent(String.self, forKey: "version")
    self.timestamp = try values.decodeIfPresent(String.self, forKey: "timestamp")
    self.id = try values.decodeIfPresent(String.self, forKey: "id")
    self.billingPlans = try values.decodeIfPresent(BillingPlans.self, forKey: "billingPlans")
    self.usage = try values.decodeIfPresent(Usage.self, forKey: "usage")
    self.azureSubscriptionID = try values.decodeIfPresent(String.self, forKey: "azureSubscriptionId")
    self.azureSubscriptionState = try values.decodeIfPresent(AzureSubscriptionState.self, forKey: "azureSubscriptionState")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(version, forKey: "version")
    try values.encodeIfPresent(timestamp, forKey: "timestamp")
    try values.encodeIfPresent(id, forKey: "id")
    try values.encodeIfPresent(billingPlans, forKey: "billingPlans")
    try values.encodeIfPresent(usage, forKey: "usage")
    try values.encodeIfPresent(azureSubscriptionID, forKey: "azureSubscriptionId")
    try values.encodeIfPresent(azureSubscriptionState, forKey: "azureSubscriptionState")
  }
}
