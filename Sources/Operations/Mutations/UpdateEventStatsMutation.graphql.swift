// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class UpdateEventStatsMutation: GraphQLMutation {
  public static let operationName: String = "updateEventStats"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation updateEventStats($id: Int!, $updateEventStatsInput: UpdateEventStatsInput!) { updateEventStats(id: $id, input: $updateEventStatsInput) { __typename stats { __typename homeTeamScore awayTeamScore } } }"#
    ))

  public var id: Int
  public var updateEventStatsInput: UpdateEventStatsInput

  public init(
    id: Int,
    updateEventStatsInput: UpdateEventStatsInput
  ) {
    self.id = id
    self.updateEventStatsInput = updateEventStatsInput
  }

  public var __variables: Variables? { [
    "id": id,
    "updateEventStatsInput": updateEventStatsInput
  ] }

  public struct Data: BenchAppGraphqlApi.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("updateEventStats", UpdateEventStats.self, arguments: [
        "id": .variable("id"),
        "input": .variable("updateEventStatsInput")
      ]),
    ] }

    public var updateEventStats: UpdateEventStats { __data["updateEventStats"] }

    /// UpdateEventStats
    ///
    /// Parent Type: `Event`
    public struct UpdateEventStats: BenchAppGraphqlApi.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Event }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("stats", Stats?.self),
      ] }

      public var stats: Stats? { __data["stats"] }

      /// UpdateEventStats.Stats
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
