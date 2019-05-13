require 'rails_helper'

RSpec.describe Product, type: :model do
  context "全カラムを指定しているとき" do
    it "商品情報が作られる" do
      product = create(:product)

      expect(product).to be_valid
    end
  end

  context "nameがない場合" do
    it "エラーする" do
      product = build(:product, name:nil)
      product.valid?

      expect(product.errors.messages[:name]).to include "can't be blank"
    end
  end

  context "descriptionがない場合" do
    it "エラーする" do
      product = build(:product, description:nil)
      product.valid?

      expect(product.errors.messages[:description]).to include "can't be blank"
    end
  end

  context "priceがない場合" do
    it "エラーする" do
      product = build(:product, price:nil)
      product.valid?

      expect(product.errors.messages[:price]).to include "can't be blank"
    end
  end
end
