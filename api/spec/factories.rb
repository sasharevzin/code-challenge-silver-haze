FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email  { Faker::Name.name }
    date_of_birth { Faker::Date.in_date_period }
  end

  factory :state_id do
    number { Faker::IDNumber.valid }
    state { Faker::Address.state }
    expiration_date { Faker::Date.in_date_period }
    image_path { "https://placekitten.com/g/300/200" }

    user
  end

  factory :medical_recommendation do
    number { Faker::IDNumber.valid }
    state { Faker::Address.state }
    issuer { Faker::Company.name }
    expiration_date { Faker::Date.in_date_period }
    image_path { "https://placekitten.com/g/300/200" }

    user
  end
end
