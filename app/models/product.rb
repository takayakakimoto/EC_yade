class Product < ApplicationRecord
  include Hashid::Rails
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true
  mount_uploader:image, ImageUploader
  has_many :basket_products, dependent: :destroy
  has_many :purchase_record_product, dependent: :destroy

end
