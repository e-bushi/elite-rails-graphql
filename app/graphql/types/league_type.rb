Types::LeagueType = GraphQL::ObjectType.define do

    name 'League'

    field :id, !types.ID
    field :league_name, !types.String
    field :league_description, !types.String
    field :start_date, !types.String
    field :end_date, !types.String
end
