class User < ApplicationRecord
  has_many :api_keys

  validates_presence_of :email, unique: true, require: true
  validates_presence_of :password_digest, require: true
  has_secure_password 
  # has_secure_token :token

  # private

  #   def self.auth_token
  #     if auth_token.blank?
  #     auth_token[:token] = SecureRandom.hex(10)
  #     else
  #       ErrorSerializer.format("Api-key already exists for this user", '400') 
  #     end
  #   end
end


