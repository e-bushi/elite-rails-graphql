Types::UserType = GraphQL::ObjectType.define do
    #this type is named user
    name 'User'

    field :id, !types.ID
    field :first_name, !types.String
    field :last_name, !types.String
    field :username, !types.String
    field :email, !types.String
end
