
class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password
  has_many :api_keys
  
  has_secure_password
end