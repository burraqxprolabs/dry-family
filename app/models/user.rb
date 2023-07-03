# class User < ApplicationRecord
#   validates :name, presence: true

#   attribute :name, Dry::Types['string']
#   attribute :age,  Dry::Types['integer']
# end


require 'dry-struct'

module Types
  include Dry.Types()
end

class User < Dry::Struct
  attribute :name, Types::String.optional
  # attribute :age, Types::Coercible::Integer
  attribute :age,Types::Coercible::Integer.constrained(gt: 0)

end
