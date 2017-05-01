FactoryGirl.define do
  factory :entry do
    name { Faker::Name.name }
    message { Faker::Lorem.paragraph}
  end
end