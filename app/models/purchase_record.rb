class PurchaseRecord < ApplicationRecord
  belongs_to :user
  has_many :purchase_record_product, dependent: :destroy
  has_many :product, through: :purchase_record_product
end
