class UserSerializer
  
  def self.format(user, api_key)
  
  {  data: 
        {
          type: 'users',
          id: user.id,
          attributes: 
          {
            email: user.email,
            api_key: api_key.token
                    }
        } 
      }
  end
end