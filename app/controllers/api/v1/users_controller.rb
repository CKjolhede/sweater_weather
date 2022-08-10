class Api::V1::UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.save
      api_key = user.api_keys.create(token = SecureRandom.hex(10))
      render json: UserSerializer.format(user,api_key), status: :created  
    else 
      render json: user.errors.full_messages.as_sentences, status: "400"
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :password_digest)
    end
end
