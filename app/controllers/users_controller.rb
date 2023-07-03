class UsersController < ApplicationController
  def create
    input = UserSchema.call(params[:user])

    if input.success?
      # Valid input data
      # Process further
    else
      # Invalid input data
      errors = input.errors.to_h
      # Handle errors appropriately
    end
  end
end
