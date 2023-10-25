// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class EventListScreenContentQuery: GraphQLQuery {
  public static let operationName: String = "eventListScreenContent"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query eventListScreenContent($eventsInput: EventsInput!, $take: Int, $skip: Int) { events(input: $eventsInput, take: $take, skip: $skip) { __typename id type yourTeam { __typename id name } opponent { __typename id name } location { __typename name } homeTeam { __typename id name } awayTeam { __typename id name } dateAndTime { __typename date time durationInMinutes full status } stats { __typename homeTeamScore awayTeamScore } } }"#
    ))

  public var eventsInput: EventsInput
  public var take: GraphQLNullable<Int>
  public var skip: GraphQLNullable<Int>

  public init(
    eventsInput: EventsInput,
    take: GraphQLNullable<Int>,
    skip: GraphQLNullable<Int>
  ) {
    self.eventsInput = eventsInput
    self.take = take
    self.skip = skip
  }

  public var __variables: Variables? { [
    "eventsInput": eventsInput,
    "take": take,
    "skip": skip
  ] }

  public struct Data: BenchAppGraphqlApi.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("events", [Event].self, arguments: [
        "input": .variable("eventsInput"),
        "take": .variable("take"),
        "skip": .variable("skip")
      ]),
    ] }

    public var events: [Event] { __data["events"] }

    /// Event
    ///
    /// Parent Type: `Event`
    public struct Event: BenchAppGraphqlApi.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Event }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Int.self),
        .field("type", GraphQLEnum<BenchAppGraphqlApi.EventType>?.self),
        .field("yourTeam", YourTeam?.self),
        .field("opponent", Opponent?.self),
        .field("location", Location?.self),
        .field("homeTeam", HomeTeam?.self),
        .field("awayTeam", AwayTeam?.self),
        .field("dateAndTime", DateAndTime?.self),
        .field("stats", Stats?.self),
      ] }

      public var id: Int { __data["id"] }
      public var type: GraphQLEnum<BenchAppGraphqlApi.EventType>? { __data["type"] }
      public var yourTeam: YourTeam? { __data["yourTeam"] }
      public var opponent: Opponent? { __data["opponent"] }
      public var location: Location? { __data["location"] }
      public var homeTeam: HomeTeam? { __data["homeTeam"] }
      public var awayTeam: AwayTeam? { __data["awayTeam"] }
      public var dateAndTime: DateAndTime? { __data["dateAndTime"] }
      public var stats: Stats? { __data["stats"] }

      /// Event.YourTeam
      ///
      /// Parent Type: `Team`
      public struct YourTeam: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Team }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", Int.self),
          .field("name", String.self),
        ] }

        public var id: Int { __data["id"] }
        public var name: String { __data["name"] }
      }

      /// Event.Opponent
      ///
      /// Parent Type: `Team`
      public struct Opponent: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Team }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", Int.self),
          .field("name", String.self),
        ] }

        public var id: Int { __data["id"] }
        public var name: String { __data["name"] }
      }

      /// Event.Location
      ///
      /// Parent Type: `EventLocation`
      public struct Location: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.EventLocation }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String?.self),
        ] }

        public var name: String? { __data["name"] }
      }

      /// Event.HomeTeam
      ///
      /// Parent Type: `Team`
      public struct HomeTeam: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Team }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", Int.self),
          .field("name", String.self),
        ] }

        public var id: Int { __data["id"] }
        public var name: String { __data["name"] }
      }

      /// Event.AwayTeam
      ///
      /// Parent Type: `Team`
      public struct AwayTeam: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Team }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", Int.self),
          .field("name", String.self),
        ] }

        public var id: Int { __data["id"] }
        public var name: String { __data["name"] }
      }

      /// Event.DateAndTime
      ///
      /// Parent Type: `EventDateAndTime`
      public struct DateAndTime: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.EventDateAndTime }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("date", BenchAppGraphqlApi.LocalDate?.self),
          .field("time", BenchAppGraphqlApi.LocalTime?.self),
          .field("durationInMinutes", Int?.self),
          .field("full", String?.self),
          .field("status", GraphQLEnum<BenchAppGraphqlApi.EventDateStatus>.self),
        ] }

        public var date: BenchAppGraphqlApi.LocalDate? { __data["date"] }
        public var time: BenchAppGraphqlApi.LocalTime? { __data["time"] }
        public var durationInMinutes: Int? { __data["durationInMinutes"] }
        public var full: String? { __data["full"] }
        public var status: GraphQLEnum<BenchAppGraphqlApi.EventDateStatus> { __data["status"] }
      }

      /// Event.Stats
      ///
      /// Parent Type: `EventStats`
      public struct Stats: BenchAppGraphqlApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.EventStats }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("homeTeamScore", Int?.self),
          .field("awayTeamScore", Int?.self),
        ] }

        public var homeTeamScore: Int? { __data["homeTeamScore"] }
        public var awayTeamScore: Int? { __data["awayTeamScore"] }
      }
    }
  }
}
