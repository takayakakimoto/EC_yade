class Basket < ApplicationRecord
  has_many :basket_products, dependent: :destroy
  has_many :products, through: :basket_products

  def total_price
		total_jpy_price
  end

  private
  def total_jpy_price
    jp_products = products
    jp_products.sum(:price)
  end
end
