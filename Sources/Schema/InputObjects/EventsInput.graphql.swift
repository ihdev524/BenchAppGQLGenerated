// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct EventsInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    playerId: GraphQLNullable<Int> = nil,
    teamId: GraphQLNullable<Int> = nil,
    seasonId: GraphQLNullable<Int> = nil,
    leagueId: GraphQLNullable<Int> = nil,
    includeUpcoming: GraphQLNullable<Bool> = nil,
    includePrevious: GraphQLNullable<Bool> = nil,
    order: GraphQLNullable<String> = nil,
    status: GraphQLNullable<GraphQLEnum<EventStatus>> = nil,
    dateRange: GraphQLNullable<EventsInputDateRange> = nil
  ) {
    __data = InputDict([
      "playerId": playerId,
      "teamId": teamId,
      "seasonId": seasonId,
      "leagueId": leagueId,
      "includeUpcoming": includeUpcoming,
      "includePrevious": includePrevious,
      "order": order,
      "status": status,
      "dateRange": dateRange
    ])
  }

  public var playerId: GraphQLNullable<Int> {
    get { __data["playerId"] }
    set { __data["playerId"] = newValue }
  }

  public var teamId: GraphQLNullable<Int> {
    get { __data["teamId"] }
    set { __data["teamId"] = newValue }
  }

  public var seasonId: GraphQLNullable<Int> {
    get { __data["seasonId"] }
    set { __data["seasonId"] = newValue }
  }

  public var leagueId: GraphQLNullable<Int> {
    get { __data["leagueId"] }
    set { __data["leagueId"] = newValue }
  }

  public var includeUpcoming: GraphQLNullable<Bool> {
    get { __data["includeUpcoming"] }
    set { __data["includeUpcoming"] = newValue }
  }

  public var includePrevious: GraphQLNullable<Bool> {
    get { __data["includePrevious"] }
    set { __data["includePrevious"] = newValue }
  }

  public var order: GraphQLNullable<String> {
    get { __data["order"] }
    set { __data["order"] = newValue }
  }

  public var status: GraphQLNullable<GraphQLEnum<EventStatus>> {
    get { __data["status"] }
    set { __data["status"] = newValue }
  }

  public var dateRange: GraphQLNullable<EventsInputDateRange> {
    get { __data["dateRange"] }
    set { __data["dateRange"] = newValue }
  }
}
