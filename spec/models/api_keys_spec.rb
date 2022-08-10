# require "rails_helper"

# RSpec.describe 'ApiKeys' do
#   describe "relationships and validations" do
#     # it {should belong_to (:user)}
    
#     # it {should validate_uniqueness_of (:token).case_sensitive}    
  
#   end
# end

require 'rails_helper'

RSpec.describe ApiKey, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:token) }
    it { should validate_uniqueness_of(:token) }
  end
  describe 'relationships' do
    it { should belong_to(:user) }
  end
end