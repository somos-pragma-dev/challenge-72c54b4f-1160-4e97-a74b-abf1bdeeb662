require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
      get :show, params: { id: product.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Product' do
        expect {
          post :create, params: { product: { name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1' } }
        }.to change(Product, :count).by(1)
      end

      it 'redirects to the created product' do
        post :create, params: { product: { name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1' } }
        expect(response).to redirect_to(Product.last)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the 'new' template)' do
        post :create, params: { product: { name: '', price: 10.0, stock: 10, category: 'Category 1' } }
        expect(response).to be_successful
      end
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
      get :edit, params: { id: product.id }
      expect(response).to be_successful
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        { name: 'Product 2', price: 20.0, stock: 20, category: 'Category 2' }
      }

      it 'updates the requested product' do
        product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
        put :update, params: { id: product.id, product: new_attributes }
        product.reload
        expect(product.name).to eq('Product 2')
      end

      it 'redirects to the product' do
        product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
        put :update, params: { id: product.id, product: new_attributes }
        expect(response).to redirect_to(product)
      end
    end

    context 'with invalid params' do
      it 'returns a success response (i.e. to display the 'edit' template)' do
        product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
        put :update, params: { id: product.id, product: { name: '' } }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested product' do
      product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
      expect {
        delete :destroy, params: { id: product.id }
      }.to change(Product, :count).by(-1)
    end

    it 'redirects to the products list' do
      product = Product.create!(name: 'Product 1', price: 10.0, stock: 10, category: 'Category 1')
      delete :destroy, params: { id: product.id }
      expect(response).to redirect_to(products_url)
    end
  end
end