class BasketProduct < ApplicationRecord
  belongs_to :basket
  has_many :products
end
