module User
  require 'dry-schema'

  Schema = Dry::Schema.Params do
    required(:name).filled(:string)
    required(:age).filled(:string)
  end
end