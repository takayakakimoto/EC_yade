class AddProductsToBasket < ActiveRecord::Migration[5.2]
  def change
    add_reference :baskets, :products, foreign_key: true
  end
end
