require 'test_helper'

class CartProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_products_index_url
    assert_response :success
  end

  test "should get edit" do
    get cart_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get cart_products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cart_products_destroy_url
    assert_response :success
  end

end
