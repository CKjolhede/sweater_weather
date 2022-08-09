gdclass UserSerializer
  
  def self.new_user_response(user)
    
  body: {
    "data": {
        "type": "users",
        "id": "#{user.id}",
        "attributes": {
          "email": "#{user.email}",
          "api_key": "#{user.auth_token}"
                      }
            } 
        }
  end
end