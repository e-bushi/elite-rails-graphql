Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: resolver functions are created as fields of the query
  field :allUsers, !types[Types::UserType] do
      #resolver will be called to fetch data
    resolve ->(obj, args, ctx) {
        User.all
    }
  end

  field :allSquads, !types[Types::SquadType] do

    resolve -> (obj, args, ctx) {
        Squad.all
    }
  end

  field :allLeagues, !types[Types::LeagueType] do

    resolve -> (obj, args, ctx) {
        League.all
    }
  end
end
