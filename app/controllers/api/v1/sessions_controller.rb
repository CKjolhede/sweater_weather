class Api::V1::SessionsController < ApplicationController
      
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password]) 
      api_key = user.api_keys[0]
      render json: UserSerializer.format(user, api_key)
    else
      render json: user.errors.full_messages.as_sentences, status: "422"
    end
  end
end