class User < ApplicationRecord
  before_create :set_auth_token
  
  validates_uniqueness_of :email
  has_secure_password
  has_secure_token :auth_token

  private

  def set_auth_token
    self.token = generate_token
  end

  def generate_token
    loop do
      token = SecureRandom.hex(10)
      break token unless User.where(auth_token: token).exists?
    end
  end
end


## this method of creating tokens was taken directly from  
#https://www.bigbinary.com/blog/has-secure-token-to-generate-unique-random-token-in-rails-5