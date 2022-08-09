FactoryBot.define do
  factory :api_key do
    bearer_id { 1 }
    bearer_type { "MyString" }
    token { "" }
  end
end
