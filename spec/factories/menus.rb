FactoryBot.define do
  factory :menu do
    name { Faker::Food.dish }
    description { Faker::Food.ingredient }
    price { Faker::Commerce.price }
  end

  factory :invalid_menu, parent: :menu do
    name { nil }
    description { nil }
    price { 10_000.0 }
  end
end