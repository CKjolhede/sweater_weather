require 'rails_helper'

RSpec.describe "User", type: :model do

    context "validations" do
      subject { User.create(email: "5@5.com", password: "pass", password_confirmation: "pass")}
      it { should validate_presence_of (:email)}
      it { should validate_presence_of (:password_digest)}
      it { should have_secure_password }
    end
end