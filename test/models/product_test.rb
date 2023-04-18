require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name should be present" do
    p = Product.new(price: 230, description: "Nice Table")
    assert_not p.valid?, "product Name should be present."
    puts "Product is not valid without name."
  end

  test "price should be present" do
    p = Product.new(product_name: "Table", description: "Nice Table")
    assert_not p.valid?, "product price should be present."
    puts "Product is not valid without price."
  end

  test "Description should be present" do
    p = Product.new(product_name: "Table", price: 230)
    assert_not p.valid?, "product description should be present."
    puts "Product is not valid without description"
  end
end
