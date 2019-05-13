FactoryBot.define do
  factory :product do
    name { Faker::Dessert.variety }
    description { Faker::Lorem.sentence } #text
    price { Faker::Number.within(100..100000) }
  end
end
