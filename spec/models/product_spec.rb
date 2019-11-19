require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.new(name: 'test')
  end
  describe 'Validations' do
    it "is not valid without a name" do
      @product = Product.new name: nil , image: 'test', price_cents: 100, quantity: 1, category: @category
      expect(@product).to_not be_valid
    end

    it "is not valid without a price" do
      @product = Product.new name: nil , image: 'test', price_cents: nil, quantity: 1, category: @category
      expect(@product).to_not be_valid
    end

    it "is not valid without a quantity" do
    @product = Product.new name: nil , image: 'test', price_cents: 100, quantity: nil, category: @category
    expect(@product).to_not be_valid

  end
    it "is not valid without a category" do
    @product = Product.new name: nil , image: 'test', price_cents: 100, quantity: 1, category: nil
    expect(@product).to_not be_valid

  end
    it "is valid with valid attributes" do
      @product = Product.new name: 'Test', image: 'test', price_cents: 100, quantity: 1, category: @category
      expect(@product).to be_valid
    end
  end
end