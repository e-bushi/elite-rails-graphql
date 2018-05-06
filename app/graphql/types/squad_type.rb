Types::SquadType = GraphQL::ObjectType.define do
    name 'Squad'

    field :id, !types.ID
    field :squad_name, !types.String
end
