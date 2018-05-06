Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :createUser, function: Resolvers::CreateUser.new
  field :createSquad, function: Resolvers::CreateSquad.new
  field :createLeague, function: Resolvers::CreateLeague.new
end
