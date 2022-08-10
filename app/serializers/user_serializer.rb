class UserSerializer
  
  def self.user_data(user)
    binding.pry
     {  "data": 
        {
          "type": "users",
          "id": user.id,
          "attributes": 
          {
            "email": user.email,
            "api_key": user.auth_token
          }
        } 
      }
    end
  end