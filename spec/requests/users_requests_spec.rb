require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "Create" do
    # let!(user) {User.create('email': 'whatever@example.com', 'password': "password") }
    
    context 'happy path' do
     xit 'creates a new user and users auth_token when requests include valid params' do
        params = {
          "email": 'whatever@example.com',
          "password": 'password',
          "password_confirmation": 'password'
        }
        headers = {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }
        headers = JSON.generate(headers)
        params = JSON.generate(params)
        
        post '/api/v1/users', headers[:headers], params[:params]

        expect(response.status).to eq(201)
          results = JSON.parse(response.body, symbolize_names: true)[:data]
          auth_key = auth_key.last
          user = User.last
        expect(results[:type]).to eq('users')
        expect(results[:id]).to eq(user.id)
        expect(results[:attributes]).to be_a(Hash)
        expect(results[:attributes][:email]).to eq('whatever@example.com')
        expect(results[:attributes][:api_key]).to eq(auth_token[:token])
      end
    end
  end
end