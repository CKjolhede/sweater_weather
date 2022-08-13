class Api::V1::SessionsController < ApplicationController
      
  def create
  end
  
  private
  
end








# user = User.find_by(email: params[:email])
# if user.present? && user.authenticate(params[:password]) 
#   api_key = user.api_keys[0]
#   render json: UserSerializer.format(user, api_key)

# else

#   render json: { Unauthorized: "Failed to provide valid information."}, status: "401"
# end
# def session_params
#     params.permit(:email, :password)
# end