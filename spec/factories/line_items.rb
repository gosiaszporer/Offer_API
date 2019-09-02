FactoryBot.define do
  factory :line_item do
    name { Faker::Food.ingredient }
    price { 39.90 }
    description { Faker::Food.description }
  end
end