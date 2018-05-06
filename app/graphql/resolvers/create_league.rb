class Resolvers::CreateLeague < GraphQL::Function
    argument :league_name, !types.String
    argument :league_description, !types.String
    argument :start_date, !types.String
    argument :end_date, !types.String

    type Types::LeagueType

    def call(_obj, args, _ctx)
        League.create!(
            league_name: args[:league_name],
            league_description: args[:league_description],
            start_date: args[:start_date],
            end_date: args[:end_date]
        )
    end
end
