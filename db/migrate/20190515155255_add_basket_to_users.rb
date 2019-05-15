class AddBasketToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :basket, foreign_key: true
  end
end
