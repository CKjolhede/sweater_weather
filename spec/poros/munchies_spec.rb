require 'rails_helper'

RSpec.describe "Munchies" do
  it "exists and has attributes" do
    data = { location: { :city => "Denver", :state => "CO", :display_address => "123 Yum St Denver, CO 80001"}, :name => "Munchios"} 
    munch = Munchies.new(data)
    
    expect(munch).to be_a Munchies
    expect(munch.destination_city).to eq("Denver, CO")
    expect(munch.name).to eq("Munchios")
    expect(munch.address).to eq("123 Yum St Denver, CO 80001")
    expect(munch.type).to eq('munchie')
    expect(munch.id).to eq("null")
  end
end