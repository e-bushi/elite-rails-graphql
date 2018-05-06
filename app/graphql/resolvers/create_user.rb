class Resolvers::CreateUser < GraphQL::Function
    argument :first_name, !types.String
    argument :last_name, !types.String
    argument :username, !types.String
    argument :email, !types.String

    type Types::UserType

    def call(_obj, args, _ctx)
        User.create!(
            first_name: args[:first_name],
            last_name: args[:last_name],
            username: args[:username],
            email: args[:email]
        )
    end
end
