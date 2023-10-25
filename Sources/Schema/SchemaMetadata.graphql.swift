// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == BenchAppGraphqlApi.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == BenchAppGraphqlApi.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == BenchAppGraphqlApi.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == BenchAppGraphqlApi.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Query": return BenchAppGraphqlApi.Objects.Query
    case "Event": return BenchAppGraphqlApi.Objects.Event
    case "Team": return BenchAppGraphqlApi.Objects.Team
    case "EventLocation": return BenchAppGraphqlApi.Objects.EventLocation
    case "EventDateAndTime": return BenchAppGraphqlApi.Objects.EventDateAndTime
    case "EventStats": return BenchAppGraphqlApi.Objects.EventStats
    case "Mutation": return BenchAppGraphqlApi.Objects.Mutation
    case "Player": return BenchAppGraphqlApi.Objects.Player
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
