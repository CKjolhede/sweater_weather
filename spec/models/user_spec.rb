
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
