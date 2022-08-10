class Api::V1::UsersController < ApplicationController
  before_create :auth_token
  def new
  end

  def create
    
    user = User.create(user_params)
    if user.save
      
      render json: UserSerializer.user_data(user), status: :created  
    else 
      render json: user.errors.full_messages, status: "400"
    end
  end
  

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :password_digest, :id, :auth_token)
    end

    def self.auth_token
        if auth_token[:token].blank?
      auth_token[:token] = SecureRandom.hex(10)
        else 
          ErrorSerializer.format("Api-key already exists for this user", Status: '400') 
        end
    end
  end
