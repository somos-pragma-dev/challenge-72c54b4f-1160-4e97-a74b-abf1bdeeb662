require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with valid attributes' do
    product = Product.new(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
    expect(product).to be_valid
  end

  it 'is not valid without a name' do
    product = Product.new(price: 10.0, stock: 10, category: 'Category 1')
    expect(product).to_not be_valid
  end

  it 'is not valid with a negative price' do
    product = Product.new(name: 'Product 1', price: -10.0, stock: 10, category: 'Category 1')
    expect(product).to_not be_valid
  end

  it 'is not valid with a duplicate name' do
    Product.create(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
    product = Product.new(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
    expect(product).to_not be_valid
  end
end