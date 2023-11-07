require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  fixtures :products

  def setup
    @product = products(:one)
  end

  test "product_id must not be null" do
    @product.product_id = " "
    assert_not @product.valid?  
  end

  test "supplier_SKU must not be null" do
    @product.supplier_SKU = " "
    assert_not @product.valid?
  end

  test "manufacturer_SKU must not be null" do
    @product.manufacturer_SKU = " "
    assert_not @product.valid?
  end

  test "short_description must not be null" do
    @product.short_description = " "
    assert_not @product.valid?
  end

  test "product_type must not be null" do
    @product.product_type = " "
    assert_not @product.valid?
  end

  test "stock_on_hand default should be 0" do
    assert_equal 0, @product.stock_on_hand
  end
end
