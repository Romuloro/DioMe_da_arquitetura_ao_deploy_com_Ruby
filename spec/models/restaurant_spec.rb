require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  let(:restaurant_) {create(:restaurant)}
  let(:products) {create_list( :product, rand(5), restaurant: restaurant_)}

  context "Restaurant have connection with products" do
    it { should have_many(:products) }
  end

  context "testing total of products" do
    it "return total of products for a specific restaurant" do
      expect(restaurant_.total_of_products).to eq restaurant_.products.length
    end
  end
end
