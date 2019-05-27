require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    subject { get(products_path) }
    before do
      create_list(:product,3)
    end
    it "リクエストが200になる" do
      subject
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /products/:id" do
    subject { get(product_path(product_id)) }
   context "指定したidの商品が存在する場合" do
    it "商品の値が取得できる" do
    end
  end
end
end