class Product < ApplicationRecord
  validates :product_id, presence: true
  validates :supplier_SKU, presence: true
  validates :manufacturer_SKU, presence: true
  validates :short_description, presence: true
  validates :product_type, presence: true
end