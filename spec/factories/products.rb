FactoryBot.define do
  factory :product do
    name { FFaker::Product.product_name }
    value { FFaker::Number.decimal }
    restaurant { create :restaurant }
  end
end
