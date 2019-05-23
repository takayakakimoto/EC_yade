class Basket < ApplicationRecord
  has_many :basket_products, dependent: :destroy
  has_many :products, through: :basket_products

  def total_price(product_ids: nil)
		total_jpy_price(product_ids)
  end

  private
  def total_jpy_price(product_ids)
    products = product_ids ? self.products.where(id: product_ids) : self.products
    jp_products = products
    jp_products.sum(:price)
  end
end
