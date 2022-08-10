# require 'rails_helper'

# RSpec.describe "User" do

#     context "validations" do

#       subject { User.create(email: "5@5.com", password: "pass", password_confirmation: "pass")}
      
#       # it { should validate_presence_of (:email).allow_nil}
#       # it { should validate_uniqueness_of (:email).ignoring_case_sensitivity }

#                               #Shoulda mathers documentation:
#                               # # RSpec
#                               # describe Post do
#                               #   it do
#                               #     should validate_uniqueness_of(:email).ignoring_case_sensitivity
#                               #   end
#                               # end
#       # it { should validate_presence_of (:password_digest)}
#       # it { should have_secure_password }
#     end
# end
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations relationships' do
    user = User.create(email: "email23@gmail.com", password: "words")
    it { should have_many(:api_keys) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password) }

  end
end
