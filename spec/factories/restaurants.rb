FactoryBot.define do
  factory :restaurant do
    name { FFaker::Company.name }
    address { FFaker::AddressBR.full_address }
  end
end
