class Api::V1::UsersController < ApplicationController

  def new
  end

  def create
    user = User.create(user_params) 
    if user.save
    
    end
  end
end 