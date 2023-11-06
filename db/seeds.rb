# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product_data = Struct.new(
  :product_id,
  :supplier_SKU,
  :manufacturer_SKU,
  :short_description,
  :product_type
)

products = []

products << Product_data.new(
  "125178",
  "0077924038778",
  "51012024A",
  "Baby Q Q1200 Black assembly",
  "Baby Q"
)

products << Product_data.new(
  "124393",
  "077924031403",
  "51062024",
  "Weber Baby Q Titanium Q1200 LP",
  "Baby Q"
)

products << Product_data.new(
  "124398",
  "077924038792",
  "54010024",
  "Weber Q Black Q2200 LP",
  "Q"
)

products.each do |product|
  puts product.product_id

  product_current = Product.new(
  product_id: product.product_id,
  supplier_SKU: product.supplier_SKU,
  manufacturer_SKU: product.manufacturer_SKU,
  short_description: product.short_description,
  product_type: product.product_type
  )

  product_current.save
end
