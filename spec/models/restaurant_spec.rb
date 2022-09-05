require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context "testing total of products" do
    it "return total of products for a specific restaurant" do
      restaurant_ = create(:restaurant)
      products = create( :product, restaurant: restaurant_)

      expect(restaurant_.total_of_products).to eq restaurant_.products.length
    end
  end
end
