// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class MeQuery: GraphQLQuery {
  public static let operationName: String = "Me"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Me { me { __typename id name } }"#
    ))

  public init() {}

  public struct Data: BenchAppGraphqlApi.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("me", Me.self),
    ] }

    public var me: Me { __data["me"] }

    /// Me
    ///
    /// Parent Type: `Player`
    public struct Me: BenchAppGraphqlApi.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { BenchAppGraphqlApi.Objects.Player }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Int.self),
        .field("name", String?.self),
      ] }

      public var id: Int { __data["id"] }
      public var name: String? { __data["name"] }
    }
  }
}
