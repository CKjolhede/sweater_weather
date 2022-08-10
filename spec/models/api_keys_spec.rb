require "rails_helper"

Rspec.describe ApiKey do
  describe "relationships and validations" do
    it {should belong_to :user}
    
    it {should validate_uniqueness_of :token }    
  
  end
end