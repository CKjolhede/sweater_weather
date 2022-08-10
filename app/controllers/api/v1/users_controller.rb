class Api::V1::UsersController < ApplicationController

  def create
 
    user = User.new(user_params)
    if user.save
      api_key = ApiKey.create(token: SecureRandom.hex, user_id: user.id)
      render json: UserSerializer.format(user,api_key), status: :created  
    else 
      render json: user.errors.full_messages.to_sentence, status: "400"
    end
  end
   
  private

    def user_params
      params.permit(:email, :password, :password_confirmation, :password_digest)
    end
end