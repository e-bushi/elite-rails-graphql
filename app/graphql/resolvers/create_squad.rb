class Resolvers::CreateSquad < GraphQL::Function
    argument :squad_name, !types.String

    type Types::SquadType

    def call(_obj, args, _ctx)
        Squad.create!(
            squad_name: args[:squad_name]
        )
    end
end
