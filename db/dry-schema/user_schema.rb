module User
  require 'dry-schema'

  Schema = Dry::Schema.Params do
    required(:name).filled(:string)
  end
end
