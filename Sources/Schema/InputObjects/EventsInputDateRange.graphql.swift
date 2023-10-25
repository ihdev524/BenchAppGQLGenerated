// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct EventsInputDateRange: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    start: GraphQLNullable<DateTime> = nil,
    end: GraphQLNullable<DateTime> = nil
  ) {
    __data = InputDict([
      "start": start,
      "end": end
    ])
  }

  public var start: GraphQLNullable<DateTime> {
    get { __data["start"] }
    set { __data["start"] = newValue }
  }

  public var end: GraphQLNullable<DateTime> {
    get { __data["end"] }
    set { __data["end"] = newValue }
  }
}
