// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct UpdateEventStatsInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    homeTeamScore: GraphQLNullable<Int> = nil,
    homeTeamShots: GraphQLNullable<Int> = nil,
    awayTeamScore: GraphQLNullable<Int> = nil,
    awayTeamShots: GraphQLNullable<Int> = nil
  ) {
    __data = InputDict([
      "homeTeamScore": homeTeamScore,
      "homeTeamShots": homeTeamShots,
      "awayTeamScore": awayTeamScore,
      "awayTeamShots": awayTeamShots
    ])
  }

  public var homeTeamScore: GraphQLNullable<Int> {
    get { __data["homeTeamScore"] }
    set { __data["homeTeamScore"] = newValue }
  }

  public var homeTeamShots: GraphQLNullable<Int> {
    get { __data["homeTeamShots"] }
    set { __data["homeTeamShots"] = newValue }
  }

  public var awayTeamScore: GraphQLNullable<Int> {
    get { __data["awayTeamScore"] }
    set { __data["awayTeamScore"] = newValue }
  }

  public var awayTeamShots: GraphQLNullable<Int> {
    get { __data["awayTeamShots"] }
    set { __data["awayTeamShots"] = newValue }
  }
}
